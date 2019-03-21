
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, simple-grasping, moveit-python, catkin, teleop-twist-keyboard, fetch-moveit-config, moveit-commander, actionlib, fetch-navigation, fetch-gazebo }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo-demo";
  version = "0.9.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_gazebo_demo/0.9.0-0.tar.gz;
    sha256 = "0b2cda64c2c4e686d9a320e9279513861d8df0a0d011b3f48e8c12bba5faab74";
  };

  propagatedBuildInputs = [ simple-grasping moveit-commander actionlib moveit-python fetch-gazebo teleop-twist-keyboard fetch-navigation fetch-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demos for fetch_gazebo package.'';
    #license = lib.licenses.BSD;
  };
}
