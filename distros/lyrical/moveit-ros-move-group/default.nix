
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, fmt, moveit-common, moveit-configs-utils, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, moveit-ros-planning, pluginlib, rclcpp, rclcpp-action, ros-testing, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-moveit-ros-move-group";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_ros_move_group/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "e770224e579a3b54c068c8532ee927552794cfbeef9e9e6e3d3ea194bb0b13e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest moveit-configs-utils moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ fmt moveit-common moveit-core moveit-kinematics moveit-ros-occupancy-map-monitor moveit-ros-planning pluginlib rclcpp rclcpp-action std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The move_group node for MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
