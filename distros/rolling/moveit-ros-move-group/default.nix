
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, fmt, moveit-common, moveit-configs-utils, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, moveit-ros-planning, pluginlib, rclcpp, rclcpp-action, ros-testing, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-move-group";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_move_group/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "ff0003acffdba60065297183c90cd7e08ee334e8cd3a56d6c4cac1ad8cdcea6e";
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
