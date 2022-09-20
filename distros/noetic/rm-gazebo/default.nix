
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, gazebo-ros-control, rm-common, rm-description, roboticsgroup-upatras-gazebo-plugins, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-gazebo";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_gazebo/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "e03de15c8cafe40eb076e07720da1c7c041d6f830af60ca26a033c623de212a9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo gazebo-ros gazebo-ros-control rm-common rm-description roboticsgroup-upatras-gazebo-plugins roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
