
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot3-gazebo, ament-cmake }:
buildRosPackage rec {
  pname = "ros-dashing-turtlebot3-simulations";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/dashing/turtlebot3_simulations/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ec175507d5359ab0b51a07083e3c2b2c84c5fac2707f936683c31b762a5b1055";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 packages for TurtleBot3 simulations'';
    license = with lib.licenses; [ asl20 ];
  };
}
