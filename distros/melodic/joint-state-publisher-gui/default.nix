
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, python-qt-binding, rospy }:
buildRosPackage {
  pname = "ros-melodic-joint-state-publisher-gui";
  version = "1.12.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/melodic/joint_state_publisher_gui/1.12.14-1.tar.gz";
    name = "1.12.14-1.tar.gz";
    sha256 = "702d43d0986b4f6dca2ada79959c1781854bbba5935bc188c3fb581e3c0c210e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
