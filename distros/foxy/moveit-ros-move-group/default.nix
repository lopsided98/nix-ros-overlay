
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-ros-occupancy-map-monitor, moveit-ros-planning, pluginlib, rclcpp, rclcpp-action, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-move-group";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_move_group/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "93dbca99dbf576adb9081cdd8cad61ea88ab643b20f3a0eb3cef1194d5bb8157";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common moveit-resources-fanuc-moveit-config ];
  propagatedBuildInputs = [ moveit-core moveit-kinematics moveit-ros-occupancy-map-monitor moveit-ros-planning pluginlib rclcpp rclcpp-action std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
