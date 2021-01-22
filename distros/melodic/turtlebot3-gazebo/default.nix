
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, geometry-msgs, nav-msgs, roscpp, sensor-msgs, std-msgs, tf, turtlebot3-description }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-gazebo";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_gazebo/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "4904798c2d4fedc19ac522a53ed69a7b46ea2ce61e01fbfc741088a3cbe28055";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo gazebo-ros geometry-msgs nav-msgs roscpp sensor-msgs std-msgs tf turtlebot3-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
