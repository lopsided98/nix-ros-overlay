
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, moveit-common, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-ros-occupancy-map-monitor, moveit-ros-planning, pluginlib, rclcpp, rclcpp-action, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-move-group";
  version = "2.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_move_group/2.8.0-2.tar.gz";
    name = "2.8.0-2.tar.gz";
    sha256 = "f415ca5ba70301ec778ea0af8c168b84149ab1040ff5b857460ceb6fe95551be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common moveit-resources-fanuc-moveit-config ];
  propagatedBuildInputs = [ fmt moveit-common moveit-core moveit-kinematics moveit-ros-occupancy-map-monitor moveit-ros-planning pluginlib rclcpp rclcpp-action std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
