
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui, rospy, rqt-gui }:
buildRosPackage {
  pname = "ros-noetic-rqt-gui-py";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_gui_py/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "f61de15223ed863924e867d6a2281c3aa9ea0aebb4fb7c5efe72095f0e8c47e6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt-gui rospy rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_py enables GUI plugins to use the Python client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
