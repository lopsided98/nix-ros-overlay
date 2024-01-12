
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, python-qt-binding, rospy }:
buildRosPackage {
  pname = "ros-noetic-joint-state-publisher-gui";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/noetic/joint_state_publisher_gui/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "0a285a9ff411a8dc5944e4540fade94f52a067f70fe79656ae40061938f8dc34";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
