
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, fetch-gazebo, fetch-moveit-config, fetch-navigation, moveit-commander, moveit-python, simple-grasping, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-melodic-fetch-gazebo-demo";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_gazebo_demo/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "05bdd08b42eef924bb22fe4761ce314019a5192c9c4905c65cecb83aa42de1e3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib fetch-gazebo fetch-moveit-config fetch-navigation moveit-commander moveit-python simple-grasping teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demos for fetch_gazebo package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
