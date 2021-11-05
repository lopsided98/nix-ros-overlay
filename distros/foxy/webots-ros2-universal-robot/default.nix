
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, controller-manager, joint-state-broadcaster, joint-trajectory-controller, moveit, pythonPackages, rclpy, robot-state-publisher, rviz2, trajectory-msgs, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-universal-robot";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_universal_robot/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "1aa11ddef8f6a4cb728dc7bcf95e687e346abbbae3593f8584173ab59fa54d82";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs controller-manager joint-state-broadcaster joint-trajectory-controller moveit rclpy robot-state-publisher rviz2 trajectory-msgs webots-ros2-control webots-ros2-driver ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
