
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, moveit-common, moveit-core, pluginlib, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-lyrical-moveit-simple-controller-manager";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_simple_controller_manager/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "d301b1ce468b1d44afd8101ba7e5873f05375c62bc80bf4693db2c55cbf88e44";
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
