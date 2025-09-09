
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, fmt, moveit-common, moveit-configs-utils, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, moveit-ros-planning, pluginlib, rclcpp, rclcpp-action, ros-testing, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-move-group";
  version = "2.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_move_group/2.12.3-1.tar.gz";
    name = "2.12.3-1.tar.gz";
    sha256 = "ab0f78e134b9037795fc8097efff1a7c17a6834d5c2532a75ca4b0473f62bfdf";
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
