
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, launch, launch-ros, python3Packages, pythonPackages, rclpy, tf2-ros, turtlesim }:
buildRosPackage {
  pname = "ros-galactic-turtle-tf2-py";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/galactic/turtle_tf2_py/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "4d6095aa5c5c84338c14f5ca5903a089282d694670d258896e26a6d6fc08056f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros python3Packages.numpy rclpy tf2-ros turtlesim ];

  meta = {
    description = ''turtle_tf2_py demonstrates how to write a ROS2 Python tf2 broadcaster and listener with the turtlesim. The turtle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
