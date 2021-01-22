
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, fetch-gazebo, fetch-moveit-config, fetch-navigation, moveit-python, simple-grasping, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-kinetic-fetch-gazebo-demo";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/kinetic/fetch_gazebo_demo/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "aef49f304da2d0b29eeb5815a06c2c1132601b3f154f2d78a5d96b00c42e8276";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib fetch-gazebo fetch-moveit-config fetch-navigation moveit-python simple-grasping teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demos for fetch_gazebo package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
