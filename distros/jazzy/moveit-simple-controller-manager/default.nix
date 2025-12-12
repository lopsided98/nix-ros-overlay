
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, moveit-common, moveit-core, pluginlib, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-jazzy-moveit-simple-controller-manager";
  version = "2.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_simple_controller_manager/2.12.4-1.tar.gz";
    name = "2.12.4-1.tar.gz";
    sha256 = "e4787f1ea836bc994dfb4fc50c88343d77c3d4cd19074c5b28bc25221ae5fb06";
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
