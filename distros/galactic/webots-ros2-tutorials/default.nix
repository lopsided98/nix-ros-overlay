
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, geometry-msgs, pythonPackages, rclpy, std-msgs, webots-ros2-core }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-tutorials";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_tutorials/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "f28618d638edfff75517b0e07afcbefb31fd9d921ca6c24d54836a5c59a28f53";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy std-msgs webots-ros2-core ];

  meta = {
    description = ''This package is made to aid youtube Webots_ROS2 tutorial series'';
    license = with lib.licenses; [ asl20 ];
  };
}
