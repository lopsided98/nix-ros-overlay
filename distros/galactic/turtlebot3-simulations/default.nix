
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-simulations";
  version = "2.2.4-r2";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/galactic/turtlebot3_simulations/2.2.4-2.tar.gz";
    name = "2.2.4-2.tar.gz";
    sha256 = "0faeea177c3ad970753b5c1dae3fdee66a2ff2a646e7eb895d33454d1a0efeb1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-fake-node turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 packages for TurtleBot3 simulations'';
    license = with lib.licenses; [ asl20 ];
  };
}
