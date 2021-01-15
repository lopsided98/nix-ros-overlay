
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-demos, webots-ros2-epuck, webots-ros2-examples, webots-ros2-importer, webots-ros2-msgs, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-tutorials, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "b7c9fe129d00ee40b82fd87a0f977d7249b5f689b8fa9c2e00b4eea938618511";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-demos webots-ros2-epuck webots-ros2-examples webots-ros2-importer webots-ros2-msgs webots-ros2-tiago webots-ros2-turtlebot webots-ros2-tutorials webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
