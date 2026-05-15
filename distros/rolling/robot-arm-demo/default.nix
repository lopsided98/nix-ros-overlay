
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, _unresolved_nvidia-cuda-dev, ament-cmake, ament-lint-auto, ament-lint-common, glew, libGL, libGLU, libtorch-vendor, libx11, rclcpp, rclcpp-components, tensor-msgs, torch-conversions }:
buildRosPackage {
  pname = "ros-rolling-robot-arm-demo";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends_tutorials-release/archive/release/rolling/robot_arm_demo/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "d43f18b5d9f043b562b0f1eaa19f4dfbc92ada4c0c4c3acb13e6d395025fa878";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ SDL2 _unresolved_nvidia-cuda-dev glew libGL libGLU libtorch-vendor libx11 rclcpp rclcpp-components tensor-msgs torch-conversions ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "GPU-rendered frames published as tensor_msgs/ExperimentalTensor and
    delivered via the cuda_buffer_backend zero-copy transport, received
    and displayed by a second node using torch_conversions.";
    license = with lib.licenses; [ asl20 ];
  };
}
