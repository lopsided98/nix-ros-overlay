
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, python-qt-binding, rospy }:
buildRosPackage {
  pname = "ros-noetic-joint-state-publisher-gui";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/noetic/joint_state_publisher_gui/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "40f83e70d4bacb6a8d16d83bd1a14fac295facf2acd8233ecf8ce8658f4574d2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
