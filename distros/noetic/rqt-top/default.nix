
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-top";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_top-release/archive/release/noetic/rqt_top/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "4bc9f4bfb79ee30f00faf53fc48c2914c179c51782dab97d625a07d5834d7a2b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.psutil rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
