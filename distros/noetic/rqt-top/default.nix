
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-top";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_top-release/archive/release/noetic/rqt_top/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "3abfefb43d7f3eacaeebfa74aa118a4638bdc765a71359d232310a79286656f8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding python3Packages.psutil rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
