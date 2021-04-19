
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-demos";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_demos/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "15e7d5de283aebca8c07a9e8eac11eead02db6c97a1eabb0b863845be6217d79";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-universal-robot ];

  meta = {
    description = ''Various demos of the Webots-ROS2 interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
