
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-adaptive-component";
  version = "0.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adaptive_component-release/archive/release/kilted/adaptive_component/0.2.1-5.tar.gz";
    name = "0.2.1-5.tar.gz";
    sha256 = "fa2081422b7c9cbd6fcb4109c16bbad22cd128970ec4970146e35836f54cfd08";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A composable container for Adaptive ROS 2 Node computations.
    Allows building Nodes that can select between FPGA, CPU or
    GPU, at run-time. Stateless by default, can be made stateful
    to meet use-case specific needs. Refer to examples in README.

    Technically, provides A ROS 2 Node subclass programmed as a
    \"Component\" and including its own single threaded executor
    to build adaptive computations. Adaptive ROS 2 Nodes are able to
    perform computations in the CPU, the FPGA or the GPU, adaptively.
    Adaptive behavior is controlled through the \"adaptive\" ROS 2
    parameter.";
    license = with lib.licenses; [ asl20 ];
  };
}
