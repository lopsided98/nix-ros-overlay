
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, std-msgs, webots-ros2-core }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-tutorials";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_tutorials/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e8366d01eac65cf95e113001924dd41cf78ec037c5dcd519c8fc8ae32a04c420";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy std-msgs webots-ros2-core ];

  meta = {
    description = ''This package is made to aid youtube Webots_ROS2 tutorial series'';
    license = with lib.licenses; [ asl20 ];
  };
}
