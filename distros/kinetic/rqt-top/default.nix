
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kinetic-rqt-top";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_top-release/archive/release/kinetic/rqt_top/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "dd9c2040422f8f861de936364b1659c9b5e1b69cdfabed0f93afb1c36d39951c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.psutil rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
