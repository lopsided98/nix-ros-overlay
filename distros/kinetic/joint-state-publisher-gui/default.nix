
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, python-qt-binding, rospy }:
buildRosPackage {
  pname = "ros-kinetic-joint-state-publisher-gui";
  version = "1.12.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/kinetic/joint_state_publisher_gui/1.12.14-1.tar.gz";
    name = "1.12.14-1.tar.gz";
    sha256 = "9409f5c663a7ba11cf5f319c9459a7092fe29e1f18b3f9fabb9125246d2f7181";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
