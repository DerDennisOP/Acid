#pragma once

#include <Scenes/Camera.hpp>

using namespace acid;

namespace test {
class FpsCamera : public Camera {
public:
	bool eye;

	FpsCamera();

	void Start() override;
	void Update() override;
};
}
