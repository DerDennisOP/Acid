# All of these will be set as PUBLIC sources to Acid
set(_temp_acid_headers
		Acid.hpp
		Animations/Animation/Animation.hpp
		Animations/Animation/AnimationLoader.hpp
		Animations/Animator.hpp
		Animations/Geometry/GeometryLoader.hpp
		Animations/Geometry/VertexAnimated.hpp
		Animations/Geometry/VertexAnimatedData.hpp
		Animations/Joint/Joint.hpp
		Animations/Joint/JointData.hpp
		Animations/Joint/JointTransform.hpp
		Animations/Joint/JointTransformData.hpp
		Animations/Keyframe/Keyframe.hpp
		Animations/Keyframe/KeyframeData.hpp
		Animations/MeshAnimated.hpp
		Animations/Skeleton/SkeletonLoader.hpp
		Animations/Skin/SkinLoader.hpp
		Animations/Skin/VertexSkinData.hpp
		Audio/Audio.hpp
		Audio/Sound.hpp
		Audio/SoundBuffer.hpp
		Audio/stb_vorbis.h
		Display/Display.hpp
		Engine/Engine.hpp
		Engine/Exports.hpp
		Engine/IModule.hpp
		Engine/Log.hpp
		Engine/ModuleRegister.hpp
		Engine/ModuleUpdater.hpp
		Events/EventChange.hpp
		Events/Events.hpp
		Events/EventStandard.hpp
		Events/EventTime.hpp
		Events/IEvent.hpp
		Files/Csv/FileCsv.hpp
		Files/Csv/RowCsv.hpp
		Files/Files.hpp
		Files/IFile.hpp
		Files/Json/FileJson.hpp
		Files/Json/JsonSection.hpp
		Files/Xml/FileXml.hpp
		Files/Xml/XmlNode.hpp
		Fonts/FontCharacter.hpp
		Fonts/FontLine.hpp
		Fonts/FontMetafile.hpp
		Fonts/FontType.hpp
		Fonts/FontWord.hpp
		Fonts/RendererFonts.hpp
		Fonts/Text.hpp
		Gizmos/Gizmo.hpp
		Gizmos/Gizmos.hpp
		Gizmos/GizmoType.hpp
		Gizmos/RendererGizmos.hpp
		Guis/Gui.hpp
		Guis/RendererGuis.hpp
		Helpers/Delegate.hpp
		Helpers/dirent.h
		Helpers/FileSystem.hpp
		Helpers/String.hpp
		Inputs/AxisButton.hpp
		Inputs/AxisCompound.hpp
		Inputs/AxisJoystick.hpp
		Inputs/ButtonCompound.hpp
		Inputs/ButtonJoystick.hpp
		Inputs/ButtonKeyboard.hpp
		Inputs/ButtonMouse.hpp
		Inputs/IAxis.hpp
		Inputs/IButton.hpp
		Inputs/Joysticks.hpp
		Inputs/Keyboard.hpp
		Inputs/Mouse.hpp
		Lights/Fog.hpp
		Lights/Light.hpp
		Materials/Material.hpp
		Materials/MaterialDefault.hpp
		Materials/PipelineMaterial.hpp
		Maths/Colour.hpp
		Maths/Delta.hpp
		Maths/Interpolation/SmoothFloat.hpp
		Maths/Maths.hpp
		Maths/Matrix2.hpp
		Maths/Matrix3.hpp
		Maths/Matrix4.hpp
		Maths/Quaternion.hpp
		Maths/Time.hpp
		Maths/Timer.hpp
		Maths/Transform.hpp
		Maths/Vector2.hpp
		Maths/Vector3.hpp
		Maths/Vector4.hpp
		Maths/Visual/DriverBounce.hpp
		Maths/Visual/DriverConstant.hpp
		Maths/Visual/DriverFade.hpp
		Maths/Visual/DriverLinear.hpp
		Maths/Visual/DriverSinwave.hpp
		Maths/Visual/DriverSlide.hpp
		Maths/Visual/IDriver.hpp
		Meshes/Mesh.hpp
		Meshes/MeshRender.hpp
		Meshes/RendererMeshes.hpp
		Models/IVertex.hpp
		Models/Model.hpp
		Models/Obj/ModelObj.hpp
		Models/Shapes/MeshPattern.hpp
		Models/Shapes/MeshSimple.hpp
		Models/Shapes/ModelCube.hpp
		Models/Shapes/ModelCylinder.hpp
		Models/Shapes/ModelDisk.hpp
		Models/Shapes/ModelRectangle.hpp
		Models/Shapes/ModelSphere.hpp
		Models/VertexModel.hpp
		Models/VertexModelData.hpp
		Network/Ftp/Ftp.hpp
		Network/Ftp/FtpDataChannel.hpp
		Network/Ftp/FtpResponse.hpp
		Network/Ftp/FtpResponseDirectory.hpp
		Network/Ftp/FtpResponseListing.hpp
		Network/Http/Http.hpp
		Network/Http/HttpRequest.hpp
		Network/Http/HttpResponse.hpp
		Network/IpAddress.hpp
		Network/Packet.hpp
		Network/Socket.hpp
		Network/SocketSelector.hpp
		Network/Tcp/TcpListener.hpp
		Network/Tcp/TcpSocket.hpp
		Network/Udp/UdpSocket.hpp
		Noise/Noise.hpp
		Particles/Emitters/EmitterCircle.hpp
		Particles/Emitters/EmitterLine.hpp
		Particles/Emitters/EmitterPoint.hpp
		Particles/Emitters/EmitterSphere.hpp
		Particles/Emitters/ParticleEmitter.hpp
		Particles/Particle.hpp
		Particles/Particles.hpp
		Particles/ParticleSystem.hpp
		Particles/ParticleType.hpp
		Particles/RendererParticles.hpp
		Physics/Colliders/Collider.hpp
		Physics/Colliders/ColliderCapsule.hpp
		Physics/Colliders/ColliderCone.hpp
		Physics/Colliders/ColliderConvexHull.hpp
		Physics/Colliders/ColliderCube.hpp
		Physics/Colliders/ColliderCylinder.hpp
		Physics/Colliders/ColliderHeightfield.hpp
		Physics/Colliders/ColliderSphere.hpp
		Physics/CollisionObject.hpp
		Physics/Force.hpp
		Physics/Frustum.hpp
		Physics/KinematicCharacter.hpp
		Physics/Ray.hpp
		Physics/Rigidbody.hpp
		Post/Deferred/RendererDeferred.hpp
		Post/Filters/FilterBlur.hpp
		Post/Filters/FilterCrt.hpp
		Post/Filters/FilterDarken.hpp
		Post/Filters/FilterDefault.hpp
		Post/Filters/FilterDof.hpp
		Post/Filters/FilterEmboss.hpp
		Post/Filters/FilterFxaa.hpp
		Post/Filters/FilterGrain.hpp
		Post/Filters/FilterGrey.hpp
		Post/Filters/FilterLensflare.hpp
		Post/Filters/FilterNegative.hpp
		Post/Filters/FilterPixel.hpp
		Post/Filters/FilterSepia.hpp
		Post/Filters/FilterSsao.hpp
		Post/Filters/FilterTiltshift.hpp
		Post/Filters/FilterTone.hpp
		Post/Filters/FilterVignette.hpp
		Post/Filters/FilterWobble.hpp
		Post/Pipelines/PipelineBlur.hpp
		Post/PostFilter.hpp
		Post/PostPipeline.hpp
		Renderer/Buffers/Buffer.hpp
		Renderer/Buffers/IndexBuffer.hpp
		Renderer/Buffers/InstanceBuffer.hpp
		Renderer/Buffers/StorageBuffer.hpp
		Renderer/Buffers/UniformBuffer.hpp
		Renderer/Buffers/VertexBuffer.hpp
		Renderer/Commands/CommandBuffer.hpp
		Renderer/Descriptors/DescriptorSet.hpp
		Renderer/Descriptors/IDescriptor.hpp
		Renderer/Handlers/DescriptorsHandler.hpp
		Renderer/Handlers/PushHandler.hpp
		Renderer/Handlers/StorageHandler.hpp
		Renderer/Handlers/UniformHandler.hpp
		Renderer/IManagerRender.hpp
		Renderer/IRenderer.hpp
		Renderer/Pipelines/Compute.hpp
		Renderer/Pipelines/IPipeline.hpp
		Renderer/Pipelines/Pipeline.hpp
		Renderer/Pipelines/PipelineCreate.hpp
		Renderer/Pipelines/ShaderProgram.hpp
		Renderer/Renderer.hpp
		Renderer/RendererRegister.hpp
		Renderer/Renderpass/Renderpass.hpp
		Renderer/Renderpass/RenderpassCreate.hpp
		Renderer/RenderStage.hpp
		Renderer/Swapchain/DepthStencil.hpp
		Renderer/Swapchain/Framebuffers.hpp
		Renderer/Swapchain/Swapchain.hpp
		Resources/IResource.hpp
		Resources/Resources.hpp
		Scenes/Camera.hpp
		Scenes/Component.hpp
		Scenes/ComponentRegister.hpp
		Scenes/Entity.hpp
		Scenes/EntityPrefab.hpp
		Scenes/Scene.hpp
		Scenes/ScenePhysics.hpp
		Scenes/Scenes.hpp
		Scenes/SceneStructure.hpp
		Serialized/Metadata.hpp
		Serialized/Serialize.hpp
		Shadows/RendererShadows.hpp
		Shadows/ShadowBox.hpp
		Shadows/ShadowRender.hpp
		Shadows/Shadows.hpp
		Skyboxes/MaterialSkybox.hpp
		Textures/Cubemap.hpp
		Textures/stb_image.h
		Textures/stb_image_write.h
		Textures/Texture.hpp
		Threads/Thread.hpp
		Threads/ThreadPool.hpp
		Uis/Inputs/UiInputButton.hpp
		Uis/Inputs/UiInputDelay.hpp
		Uis/Inputs/UiInputGrabber.hpp
		Uis/Inputs/UiInputSlider.hpp
		Uis/Inputs/UiInputText.hpp
		Uis/UiBound.hpp
		Uis/UiObject.hpp
		Uis/Uis.hpp
		Uis/UiSelector.hpp
		Uis/UiStartLogo.hpp
		)
set(_temp_acid_sources
		Animations/Animation/Animation.cpp
		Animations/Animation/AnimationLoader.cpp
		Animations/Animator.cpp
		Animations/Geometry/GeometryLoader.cpp
		Animations/Geometry/VertexAnimated.cpp
		Animations/Geometry/VertexAnimatedData.cpp
		Animations/Joint/Joint.cpp
		Animations/Joint/JointData.cpp
		Animations/Joint/JointTransform.cpp
		Animations/Joint/JointTransformData.cpp
		Animations/Keyframe/Keyframe.cpp
		Animations/Keyframe/KeyframeData.cpp
		Animations/MeshAnimated.cpp
		Animations/Skeleton/SkeletonLoader.cpp
		Animations/Skin/SkinLoader.cpp
		Animations/Skin/VertexSkinData.cpp
		Audio/Audio.cpp
		Audio/Sound.cpp
		Audio/SoundBuffer.cpp
		Display/Display.cpp
		Engine/Engine.cpp
		Engine/Log.cpp
		Engine/ModuleRegister.cpp
		Engine/ModuleUpdater.cpp
		Events/Events.cpp
		Events/EventStandard.cpp
		Events/EventTime.cpp
		Files/Csv/FileCsv.cpp
		Files/Csv/RowCsv.cpp
		Files/Files.cpp
		Files/Json/FileJson.cpp
		Files/Json/JsonSection.cpp
		Files/Xml/FileXml.cpp
		Files/Xml/XmlNode.cpp
		Fonts/FontCharacter.cpp
		Fonts/FontLine.cpp
		Fonts/FontMetafile.cpp
		Fonts/FontType.cpp
		Fonts/FontWord.cpp
		Fonts/RendererFonts.cpp
		Fonts/Text.cpp
		Gizmos/Gizmo.cpp
		Gizmos/Gizmos.cpp
		Gizmos/GizmoType.cpp
		Gizmos/RendererGizmos.cpp
		Guis/Gui.cpp
		Guis/RendererGuis.cpp
		Helpers/FileSystem.cpp
		Helpers/String.cpp
		Inputs/AxisButton.cpp
		Inputs/AxisCompound.cpp
		Inputs/AxisJoystick.cpp
		Inputs/ButtonCompound.cpp
		Inputs/ButtonJoystick.cpp
		Inputs/ButtonKeyboard.cpp
		Inputs/ButtonMouse.cpp
		Inputs/Joysticks.cpp
		Inputs/Keyboard.cpp
		Inputs/Mouse.cpp
		Lights/Fog.cpp
		Lights/Light.cpp
		Materials/MaterialDefault.cpp
		Materials/PipelineMaterial.cpp
		Maths/Colour.cpp
		Maths/Delta.cpp
		Maths/Interpolation/SmoothFloat.cpp
		Maths/Maths.cpp
		Maths/Matrix2.cpp
		Maths/Matrix3.cpp
		Maths/Matrix4.cpp
		Maths/Quaternion.cpp
		Maths/Time.cpp
		Maths/Timer.cpp
		Maths/Transform.cpp
		Maths/Vector2.cpp
		Maths/Vector3.cpp
		Maths/Vector4.cpp
		Maths/Visual/DriverBounce.cpp
		Maths/Visual/DriverConstant.cpp
		Maths/Visual/DriverFade.cpp
		Maths/Visual/DriverLinear.cpp
		Maths/Visual/DriverSinwave.cpp
		Maths/Visual/DriverSlide.cpp
		Meshes/Mesh.cpp
		Meshes/MeshRender.cpp
		Meshes/RendererMeshes.cpp
		Models/Model.cpp
		Models/Obj/ModelObj.cpp
		Models/Shapes/MeshPattern.cpp
		Models/Shapes/MeshSimple.cpp
		Models/Shapes/ModelCube.cpp
		Models/Shapes/ModelCylinder.cpp
		Models/Shapes/ModelDisk.cpp
		Models/Shapes/ModelRectangle.cpp
		Models/Shapes/ModelSphere.cpp
		Models/VertexModel.cpp
		Models/VertexModelData.cpp
		Network/Ftp/Ftp.cpp
		Network/Ftp/FtpDataChannel.cpp
		Network/Ftp/FtpResponse.cpp
		Network/Ftp/FtpResponseDirectory.cpp
		Network/Ftp/FtpResponseListing.cpp
		Network/Http/Http.cpp
		Network/Http/HttpRequest.cpp
		Network/Http/HttpResponse.cpp
		Network/IpAddress.cpp
		Network/Packet.cpp
		Network/Socket.cpp
		Network/SocketSelector.cpp
		Network/Tcp/TcpListener.cpp
		Network/Tcp/TcpSocket.cpp
		Network/Udp/UdpSocket.cpp
		Noise/Noise.cpp
		Particles/Emitters/EmitterCircle.cpp
		Particles/Emitters/EmitterLine.cpp
		Particles/Emitters/EmitterPoint.cpp
		Particles/Emitters/EmitterSphere.cpp
		Particles/Particle.cpp
		Particles/Particles.cpp
		Particles/ParticleSystem.cpp
		Particles/ParticleType.cpp
		Particles/RendererParticles.cpp
		Physics/Colliders/Collider.cpp
		Physics/Colliders/ColliderCapsule.cpp
		Physics/Colliders/ColliderCone.cpp
		Physics/Colliders/ColliderConvexHull.cpp
		Physics/Colliders/ColliderCube.cpp
		Physics/Colliders/ColliderCylinder.cpp
		Physics/Colliders/ColliderHeightfield.cpp
		Physics/Colliders/ColliderSphere.cpp
		Physics/CollisionObject.cpp
		Physics/Force.cpp
		Physics/Frustum.cpp
		Physics/KinematicCharacter.cpp
		Physics/Ray.cpp
		Physics/Rigidbody.cpp
		Post/Deferred/RendererDeferred.cpp
		Post/Filters/FilterBlur.cpp
		Post/Filters/FilterCrt.cpp
		Post/Filters/FilterDarken.cpp
		Post/Filters/FilterDefault.cpp
		Post/Filters/FilterDof.cpp
		Post/Filters/FilterEmboss.cpp
		Post/Filters/FilterFxaa.cpp
		Post/Filters/FilterGrain.cpp
		Post/Filters/FilterGrey.cpp
		Post/Filters/FilterLensflare.cpp
		Post/Filters/FilterNegative.cpp
		Post/Filters/FilterPixel.cpp
		Post/Filters/FilterSepia.cpp
		Post/Filters/FilterSsao.cpp
		Post/Filters/FilterTiltshift.cpp
		Post/Filters/FilterTone.cpp
		Post/Filters/FilterVignette.cpp
		Post/Filters/FilterWobble.cpp
		Post/Pipelines/PipelineBlur.cpp
		Post/PostFilter.cpp
		Renderer/Buffers/Buffer.cpp
		Renderer/Buffers/IndexBuffer.cpp
		Renderer/Buffers/InstanceBuffer.cpp
		Renderer/Buffers/StorageBuffer.cpp
		Renderer/Buffers/UniformBuffer.cpp
		Renderer/Buffers/VertexBuffer.cpp
		Renderer/Commands/CommandBuffer.cpp
		Renderer/Descriptors/DescriptorSet.cpp
		Renderer/Handlers/DescriptorsHandler.cpp
		Renderer/Handlers/PushHandler.cpp
		Renderer/Handlers/StorageHandler.cpp
		Renderer/Handlers/UniformHandler.cpp
		Renderer/Pipelines/Compute.cpp
		Renderer/Pipelines/Pipeline.cpp
		Renderer/Pipelines/ShaderProgram.cpp
		Renderer/Renderer.cpp
		Renderer/RendererRegister.cpp
		Renderer/Renderpass/Renderpass.cpp
		Renderer/RenderStage.cpp
		Renderer/Swapchain/DepthStencil.cpp
		Renderer/Swapchain/Framebuffers.cpp
		Renderer/Swapchain/Swapchain.cpp
		Resources/Resources.cpp
		Scenes/ComponentRegister.cpp
		Scenes/Entity.cpp
		Scenes/EntityPrefab.cpp
		Scenes/ScenePhysics.cpp
		Scenes/Scenes.cpp
		Scenes/SceneStructure.cpp
		Serialized/Metadata.cpp
		Serialized/Serialize.cpp
		Shadows/RendererShadows.cpp
		Shadows/ShadowBox.cpp
		Shadows/ShadowRender.cpp
		Shadows/Shadows.cpp
		Skyboxes/MaterialSkybox.cpp
		Textures/Cubemap.cpp
		Textures/Texture.cpp
		Threads/Thread.cpp
		Threads/ThreadPool.cpp
		Uis/Inputs/UiInputButton.cpp
		Uis/Inputs/UiInputDelay.cpp
		Uis/Inputs/UiInputGrabber.cpp
		Uis/Inputs/UiInputSlider.cpp
		Uis/Inputs/UiInputText.cpp
		Uis/UiBound.cpp
		Uis/UiObject.cpp
		Uis/Uis.cpp
		Uis/UiSelector.cpp
		Uis/UiStartLogo.cpp
		)

# Sets all headers as PUBLIC sources for Acid
# The BUILD/INSTALL interface generator expressions are for the EXPORT command
# Otherwise it wouldn't know where to look for them
foreach(_acid_header IN LISTS _temp_acid_headers)
	target_sources(Acid PUBLIC
			$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${_acid_header}>
			$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}/${_acid_header}>
			)
endforeach()
# Sets all sources (cpp) as PRIVATE sources for Acid
# An INSTALL_INTERFACE isn't needed, as cpp files aren't installed
foreach(_acid_source IN LISTS _temp_acid_sources)
	target_sources(Acid PRIVATE
			$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${_acid_source}>
			)
endforeach()
