
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot3-gazebo, catkin, turtlebot3-fake }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-simulations";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/turtlebot3_simulations/1.2.0-0.tar.gz;
    sha256 = "a413fe6412ba3e36a36f1cec6072ff4304dc37730d14709564bb5f8f26134005";
  };

  propagatedBuildInputs = [ turtlebot3-gazebo turtlebot3-fake ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the turtlebot3 simulation (meta package)'';
    #license = lib.licenses.Apache 2.0;
  };
}
