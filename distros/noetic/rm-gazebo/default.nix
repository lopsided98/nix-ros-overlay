
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, gazebo-ros-control, rm-common, rm-description, roboticsgroup-upatras-gazebo-plugins, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-gazebo";
  version = "0.1.7-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_gazebo/0.1.7-3.tar.gz";
    name = "0.1.7-3.tar.gz";
    sha256 = "483da5a38f0a7d3a4534c4e6980aac1c6876acff5148e891e8866b98d2afe4be";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo gazebo-ros gazebo-ros-control rm-common rm-description roboticsgroup-upatras-gazebo-plugins roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
