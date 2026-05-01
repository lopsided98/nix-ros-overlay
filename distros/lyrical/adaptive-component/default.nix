
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-lyrical-adaptive-component";
  version = "0.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adaptive_component-release/archive/release/lyrical/adaptive_component/0.2.1-6.tar.gz";
    name = "0.2.1-6.tar.gz";
    sha256 = "32cfe2e401fa0b8880a5f6fbac6abcca46fd59b903d6d34d0d72ec987d202666";
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
