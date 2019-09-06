
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot3-gazebo, catkin, turtlebot3-fake }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-simulations";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/kinetic/turtlebot3_simulations/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "2a85c08d06a3de6cb9ee85cdadae592f6e7ee8c3e5bb31b9232ea148977060da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot3-gazebo turtlebot3-fake ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the turtlebot3 simulation (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
