
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-abb, webots-ros2-core, webots-ros2-examples, webots-ros2-importer, webots-ros2-tiago, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-eloquent-webots-ros2";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/eloquent/webots_ros2/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "71173baff1fc2910851a4f47c7297409b6257e736310c1155492a5a67ad96d9a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-abb webots-ros2-core webots-ros2-examples webots-ros2-importer webots-ros2-tiago webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
