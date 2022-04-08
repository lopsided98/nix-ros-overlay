
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, gazebo-ros-control, rm-common, rm-description, roboticsgroup-upatras-gazebo-plugins, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-gazebo";
  version = "0.1.9-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_gazebo/0.1.9-3.tar.gz";
    name = "0.1.9-3.tar.gz";
    sha256 = "5f32b2b0fb9c49ce87e19a0f8533e60c83e0d0c0f21dbf34bc22b1c99cfcc0ed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo gazebo-ros gazebo-ros-control rm-common rm-description roboticsgroup-upatras-gazebo-plugins roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
