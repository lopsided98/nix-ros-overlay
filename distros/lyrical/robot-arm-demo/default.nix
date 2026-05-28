
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, _unresolved_nvidia-cuda-dev, ament-cmake, ament-lint-auto, ament-lint-common, glew, libGL, libGLU, libtorch-vendor, libx11, rclcpp, rclcpp-components, tensor-msgs, torch-conversions }:
buildRosPackage {
  pname = "ros-lyrical-robot-arm-demo";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends_tutorials-release/archive/release/lyrical/robot_arm_demo/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "0e74f84f8f24f06ee19ebbb638b570b5e6cf4b80d17bdc98d8afa82323141397";
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
