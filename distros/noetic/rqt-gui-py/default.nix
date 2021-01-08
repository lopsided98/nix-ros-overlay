
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui, rospy, rqt-gui }:
buildRosPackage {
  pname = "ros-noetic-rqt-gui-py";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_gui_py/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "09189797f0eb056a7b9b22dfdd77b25b66a170e83173ad798f1a9d2e8b777888";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui rospy rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
