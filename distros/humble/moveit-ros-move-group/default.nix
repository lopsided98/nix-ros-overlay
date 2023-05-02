
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-ros-occupancy-map-monitor, moveit-ros-planning, pluginlib, rclcpp, rclcpp-action, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-moveit-ros-move-group";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_ros_move_group/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "39db31a7e30e1a80d746ff60531af45a5b1c20344dfbe4ec5f67273017ec68c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common moveit-resources-fanuc-moveit-config ];
  propagatedBuildInputs = [ moveit-common moveit-core moveit-kinematics moveit-ros-occupancy-map-monitor moveit-ros-planning pluginlib rclcpp rclcpp-action std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
