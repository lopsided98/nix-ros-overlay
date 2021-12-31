
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, controller-manager, joint-state-broadcaster, joint-trajectory-controller, moveit, pythonPackages, rclpy, robot-state-publisher, rviz2, trajectory-msgs, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-universal-robot";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2_universal_robot/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "5c4d935371abea3dbd58a1012a3e247cfac5421895fea09e7b58b66c22c00c0e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs controller-manager joint-state-broadcaster joint-trajectory-controller moveit rclpy robot-state-publisher rviz2 trajectory-msgs webots-ros2-control webots-ros2-driver ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
