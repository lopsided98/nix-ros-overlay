
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-demos, webots-ros2-epuck, webots-ros2-examples, webots-ros2-importer, webots-ros2-msgs, webots-ros2-tesla, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-tutorials, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "1eab86f377e10bff744908ef1ebcf6a9f8287e0c7709c57d847572c69ec9e57c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-demos webots-ros2-epuck webots-ros2-examples webots-ros2-importer webots-ros2-msgs webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-tutorials webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
