
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-top";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_top-release/archive/release/noetic/rqt_top/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "67360350d8a9fc3844dcf3c8eea9510d1ae3316cc1b5f4778285c4412edb2e2f";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.psutil rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "RQT plugin for monitoring ROS processes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
