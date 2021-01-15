
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, std-msgs, webots-ros2-core }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-tutorials";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_tutorials/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "a2f07eb5081eb1eb7b0a52f24cbd68f7996c1c579f98ad42775c66ae01be34e6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy std-msgs webots-ros2-core ];

  meta = {
    description = ''This package is made to aid youtube Webots_ROS2 tutorial series'';
    license = with lib.licenses; [ asl20 ];
  };
}
