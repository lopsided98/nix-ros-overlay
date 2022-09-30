
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, controller-manager, joint-state-broadcaster, joint-trajectory-controller, pythonPackages, rclpy, robot-state-publisher, rviz2, trajectory-msgs, webots-ros2-control, webots-ros2-driver, xacro }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-universal-robot";
  version = "2022.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_universal_robot/2022.1.0-1.tar.gz";
    name = "2022.1.0-1.tar.gz";
    sha256 = "c35e02ecc510988d96f0e63410defc0a0a1b42472f2707cfa03d27f4f93c0c49";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs controller-manager joint-state-broadcaster joint-trajectory-controller rclpy robot-state-publisher rviz2 trajectory-msgs webots-ros2-control webots-ros2-driver xacro ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
