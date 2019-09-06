
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros-pkgs, turtlebot3-description, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-gazebo";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/dashing/turtlebot3_gazebo/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ec66178d756c8ec99d32d753a25a98ae4c5c78d93f072338b2879deca5753260";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-ros-pkgs turtlebot3-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
