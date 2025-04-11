
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, python-qt-binding, rospy }:
buildRosPackage {
  pname = "ros-noetic-joint-state-publisher-gui";
  version = "1.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joint_state_publisher-release/archive/release/noetic/joint_state_publisher_gui/1.15.2-1.tar.gz";
    name = "1.15.2-1.tar.gz";
    sha256 = "ed8bd7878ad29dd30ea25fc4192db25e97eae1a50cce4c0b8223750342772010";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
