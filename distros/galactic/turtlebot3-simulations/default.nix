
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-fake-node, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-galactic-turtlebot3-simulations";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/galactic/turtlebot3_simulations/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "6fe67cb191ca2dcab6dd76a8266296360f6f71a55b8370d55f9f0fedb71550c0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ turtlebot3-fake-node turtlebot3-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 packages for TurtleBot3 simulations'';
    license = with lib.licenses; [ asl20 ];
  };
}
