
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, fmt, moveit-common, moveit-configs-utils, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-occupancy-map-monitor, moveit-ros-planning, pluginlib, rclcpp, rclcpp-action, ros-testing, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-move-group";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_move_group/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "b8228439c5af3e26d2f7268e1822da5bfc45cf2975cc78d49569178d9ab68eef";
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
