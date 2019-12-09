
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fetch-navigation, moveit-commander, moveit-python, actionlib, catkin, fetch-gazebo, teleop-twist-keyboard, fetch-moveit-config, simple-grasping }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo-demo";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_gazebo_demo/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "05bdd08b42eef924bb22fe4761ce314019a5192c9c4905c65cecb83aa42de1e3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fetch-navigation moveit-commander moveit-python actionlib fetch-gazebo teleop-twist-keyboard fetch-moveit-config simple-grasping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demos for fetch_gazebo package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
