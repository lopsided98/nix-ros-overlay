
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-fake, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-simulations";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/noetic/turtlebot3_simulations/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "717bedf9950d6e1238d8892074d91aef195ee9f8f351f98e7348b0ccb03bb2b3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot3-fake turtlebot3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the turtlebot3 simulation (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
