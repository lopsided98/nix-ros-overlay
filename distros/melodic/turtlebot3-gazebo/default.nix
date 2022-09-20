
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, geometry-msgs, nav-msgs, roscpp, sensor-msgs, std-msgs, tf, turtlebot3-description }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-gazebo";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_gazebo/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "6c2fcf64534c1bf2c45e1525b6ace892fecb354cc998985f969a55755b6e7857";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo gazebo-ros geometry-msgs nav-msgs roscpp sensor-msgs std-msgs tf turtlebot3-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation package for the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
