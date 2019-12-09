
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, ament-copyright, std-msgs, pythonPackages, ament-pep257, control-msgs, rclpy, builtin-interfaces, rosgraph-msgs, ament-flake8, webots-ros2-core }:
buildRosPackage {
  pname = "ros-crystal-webots-ros2-universal-robot";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/crystal/webots_ros2_universal_robot/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "3b7c3d898d90d5f1c04855ba5d0b8a567d66159a0d77f9c0fe84887359a173ff";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs std-msgs control-msgs rclpy builtin-interfaces rosgraph-msgs webots-ros2-core ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
