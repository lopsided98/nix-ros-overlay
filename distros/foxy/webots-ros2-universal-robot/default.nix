
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, pythonPackages, rclpy, rosgraph-msgs, rviz2, sensor-msgs, std-msgs, trajectory-msgs, webots-ros2-core, webots-ros2-ur-e-description }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-universal-robot";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_universal_robot/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9f3e1917877574a5a27255972a76bb3b732e9851e1acb1d9ccccdd24a2a4bb1a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs rclpy rosgraph-msgs rviz2 sensor-msgs std-msgs trajectory-msgs webots-ros2-core webots-ros2-ur-e-description ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
