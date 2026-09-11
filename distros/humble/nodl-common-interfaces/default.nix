
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-nodl }:
buildRosPackage {
  pname = "ros-humble-nodl-common-interfaces";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/nodl_common_interfaces/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "2ab81da3e5e0b7401b2c2e27b134f55299602ba99fb7d3e23e65b7e58e81f521";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-nodl ];
  nativeBuildInputs = [ ament-cmake ament-nodl ];

  meta = {
    description = "NoDL interface descriptions for standard ROS 2 node base classes (rclcpp::Node, rclcpp_lifecycle::LifecycleNode).

    These descriptions will eventually ship with the upstream packages themselves.
    Until then, this package registers them in the ament index so that nodl://rclcpp/node and
    nodl://rclcpp_lifecycle/lifecycle_node resolve correctly.";
    license = with lib.licenses; [ asl20 ];
  };
}
