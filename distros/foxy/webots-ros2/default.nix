
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-examples, webots-ros2-importer, webots-ros2-tiago, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "21d3c5e28cd68ba45fb6e3f9927ad4b78ee5c28ea38c72424e762ca340ed69aa";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-examples webots-ros2-importer webots-ros2-tiago webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
