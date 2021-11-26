
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, gazebo-ros-control, rm-common, rm-description, roboticsgroup-upatras-gazebo-plugins, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-gazebo";
  version = "0.1.7-r4";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_gazebo/0.1.7-4.tar.gz";
    name = "0.1.7-4.tar.gz";
    sha256 = "06254ba3055b0cfe93c9312ca0f3201d3be0bf8fcdb8190afea843d5fffc2d37";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo gazebo-ros gazebo-ros-control rm-common rm-description roboticsgroup-upatras-gazebo-plugins roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
