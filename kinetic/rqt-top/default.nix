
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-top";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_top-release/archive/release/kinetic/rqt_top/0.4.8-0.tar.gz;
    sha256 = "dd9c2040422f8f861de936364b1659c9b5e1b69cdfabed0f93afb1c36d39951c";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.psutil rqt-gui rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
