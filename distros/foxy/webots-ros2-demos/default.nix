
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-demos";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_demos/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c8c8218c5c8968187765367ca4c0a1f4c0dc8bcb080b4c761fd92eb97543211e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-universal-robot ];

  meta = {
    description = ''Various demos of the Webots-ROS2 interface.'';
    license = with lib.licenses; [ asl20 ];
  };
}
