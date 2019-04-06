
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, simple-grasping, moveit-python, catkin, teleop-twist-keyboard, fetch-moveit-config, moveit-commander, actionlib, fetch-navigation, fetch-gazebo }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo-demo";
  version = "0.9.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_gazebo_demo/0.9.1-0.tar.gz;
    sha256 = "07c57825c60fb935a99013eec3b272268a0b4d4564b9d68599dbdf7eff3e5389";
  };

  propagatedBuildInputs = [ simple-grasping moveit-commander actionlib moveit-python fetch-gazebo teleop-twist-keyboard fetch-navigation fetch-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demos for fetch_gazebo package.'';
    #license = lib.licenses.BSD;
  };
}
