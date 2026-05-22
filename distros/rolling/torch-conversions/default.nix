
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, libtorch-vendor, rclcpp, rclcpp-components, rcutils, rmw, rosidl-buffer, std-msgs, tensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-torch-conversions";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/rolling/torch_conversions/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3d6a24c7771aa14d9c55995f97a5f85d5c1ae32ddfbf6aebe91c20670f7a16b4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake rclcpp rclcpp-components std-msgs ];
  propagatedBuildInputs = [ libtorch-vendor rcutils rmw rosidl-buffer tensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Header-only helper library that converts between a
  tensor_msgs/ExperimentalTensor message and an at::Tensor backed by rosidl::Buffer storage.";
    license = with lib.licenses; [ asl20 ];
  };
}
