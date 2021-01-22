
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-fake, turtlebot3-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-simulations";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/kinetic/turtlebot3_simulations/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "8a73b4feba96379e0304dd18b621cb36db774cae9070919527e6562af2738852";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot3-fake turtlebot3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the turtlebot3 simulation (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
