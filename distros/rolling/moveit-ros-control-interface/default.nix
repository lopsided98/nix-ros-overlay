
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager-msgs, moveit-common, moveit-core, moveit-simple-controller-manager, pluginlib, rclcpp-action, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-control-interface";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_control_interface/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "72b884b0a39af92c6d4cb0c10e61f5fc7d0c7f62fb0550b2f1f2478143e4e8dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager-msgs moveit-common moveit-core moveit-simple-controller-manager pluginlib rclcpp-action trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros_control controller manager interface for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
