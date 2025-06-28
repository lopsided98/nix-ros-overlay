
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, moveit-common, moveit-core, pluginlib, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-kilted-moveit-simple-controller-manager";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_simple_controller_manager/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "57d3b35d411be52a9c4f88c3732ed2ca4b92a3c37973466f2df7ef35d2028993";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ control-msgs moveit-common moveit-core pluginlib rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A generic, simple controller manager plugin for MoveIt.";
    license = with lib.licenses; [ bsd3 ];
  };
}
