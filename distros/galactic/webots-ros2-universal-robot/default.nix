
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, pythonPackages, rclpy, rosgraph-msgs, rviz2, sensor-msgs, std-msgs, trajectory-msgs, webots-ros2-core, webots-ros2-ur-e-description }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-universal-robot";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_universal_robot/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "94f50cd05d086638b93b7b12e54e43994cb3a0f96312f008e20b60477c14b699";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs rclpy rosgraph-msgs rviz2 sensor-msgs std-msgs trajectory-msgs webots-ros2-core webots-ros2-ur-e-description ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
