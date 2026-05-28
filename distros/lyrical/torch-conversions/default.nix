
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, libtorch-vendor, rclcpp, rclcpp-components, rcutils, rmw, rosidl-buffer, std-msgs, tensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-torch-conversions";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/lyrical/torch_conversions/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "0cfa5c633e187ab8140353c71c9f62b3b0e01cf5d1be6509ce6d32828f058fc3";
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
