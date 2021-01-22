
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, python-qt-binding, rospy }:
buildRosPackage {
  pname = "ros-kinetic-joint-state-publisher-gui";
  version = "1.12.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/kinetic/joint_state_publisher_gui/1.12.15-1.tar.gz";
    name = "1.12.15-1.tar.gz";
    sha256 = "ef8e3abcb28222b108de0d7a099bc4840ff770324b4020ae18443c496dbec409";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
