
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, launch, launch-ros, pythonPackages, rclpy, tf-transformations, tf2-ros, turtlesim }:
buildRosPackage {
  pname = "ros-foxy-turtle-tf2-py";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/foxy/turtle_tf2_py/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "07dc427ef64910124657ae6dc8a985d859b8c7d32836c63125f23cb08932fd52";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros rclpy tf-transformations tf2-ros turtlesim ];

  meta = {
    description = ''turtle_tf2_py demonstrates how to write a ROS2 Python tf2 broadcaster and listener with the turtlesim. The turtle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
