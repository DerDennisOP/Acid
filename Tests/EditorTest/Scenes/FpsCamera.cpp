#include "FpsCamera.hpp"

#include <Devices/Mouse.hpp>
#include <Inputs/Input.hpp>
#include <Scenes/Scenes.hpp>
#include <Scenes/Entity.hpp>
#include <Maths/Maths.hpp>
#include <Graphics/Graphics.hpp>
#include "FpsPlayer.hpp"

namespace test {
static constexpr Vector3f ViewOffset(0.0f, 1.8f, 0.0f);

FpsCamera::FpsCamera() {
	nearPlane = 0.1f;
	farPlane = 4098.0f;
	fieldOfView = Maths::Radians(70.0f);
}

void FpsCamera::Start() {
}

void FpsCamera::Update() {
	auto delta = Engine::Get()->GetDelta().AsSeconds();

	if (auto scenePlayer = Scenes::Get()->GetStructure()->GetComponent<FpsPlayer>()) {
		if (auto transformPlayer = scenePlayer->GetEntity()->GetComponent<Transform>())
		{
			velocity = (transformPlayer->GetPosition() - position) / delta;
			position = transformPlayer->GetPosition() + ViewOffset;
		}
	}

	if (!Scenes::Get()->IsPaused()) {
		auto rotationDelta = Mouse::Get()->IsCursorHidden() * Vector2f(Input::Get()->GetAxis("mouseX")->GetAmount(),
			Input::Get()->GetAxis("mouseY")->GetAmount());

		if (eye == false) { position.x -= 1.0f; }
		else { position.x += 1.0f; }
		eye = !eye;

		rotation.y += rotationDelta.x;
		rotation.x += rotationDelta.y;
		rotation.x = std::clamp(rotation.x, Maths::Radians(90.0f), Maths::Radians(270.0f));
	}

	viewMatrix = Matrix4::ViewMatrix(position, rotation);
	projectionMatrix = Matrix4::PerspectiveMatrix(GetFieldOfView(), Window::Get()->GetAspectRatio(), GetNearPlane(), GetFarPlane());

	viewFrustum.Update(viewMatrix, projectionMatrix);
	viewRay.Update(position, {0.5f, 0.5f}, viewMatrix, projectionMatrix);
}
}
