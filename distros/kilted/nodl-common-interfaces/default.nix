
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-nodl }:
buildRosPackage {
  pname = "ros-kilted-nodl-common-interfaces";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/kilted/nodl_common_interfaces/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "dfc0ebad90b116feca8b5e3552d6938e9073059233a6a5bfb26b709a32c7a7bb";
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
