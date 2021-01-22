
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-fake, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-simulations";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_simulations/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "9a37b9826f45018669604a4c0d3fd205f36303f3182c787d4d6d54c174afb6a4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot3-fake turtlebot3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the turtlebot3 simulation (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
