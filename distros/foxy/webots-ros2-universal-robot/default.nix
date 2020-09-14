
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, pythonPackages, rclpy, rosgraph-msgs, rviz2, sensor-msgs, std-msgs, trajectory-msgs, webots-ros2-core, webots-ros2-ur-e-description }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-universal-robot";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_universal_robot/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "7b4fc3bb3813e18def180a15f7dc4e801466cd3ac97760ed18c517acc5d68f9f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs rclpy rosgraph-msgs rviz2 sensor-msgs std-msgs trajectory-msgs webots-ros2-core webots-ros2-ur-e-description ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
