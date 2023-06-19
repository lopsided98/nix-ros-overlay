
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, builtin-interfaces, control-msgs, controller-manager, joint-state-broadcaster, joint-trajectory-controller, pythonPackages, rclpy, robot-state-publisher, rviz2, trajectory-msgs, webots-ros2-control, webots-ros2-driver, xacro }:
buildRosPackage {
  pname = "ros-iron-webots-ros2-universal-robot";
  version = "2023.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/iron/webots_ros2_universal_robot/2023.0.4-1.tar.gz";
    name = "2023.0.4-1.tar.gz";
    sha256 = "26425cc57af4174ade292425bd493111e9b0c6e17fe0bba71a55ff424df899eb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs controller-manager joint-state-broadcaster joint-trajectory-controller rclpy robot-state-publisher rviz2 trajectory-msgs webots-ros2-control webots-ros2-driver xacro ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
