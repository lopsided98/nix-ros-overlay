
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, pythonPackages, catkin, qt-gui, qt-gui-py-common, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-py-console";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_py_console-release/archive/release/lunar/rqt_py_console/0.4.8-0.tar.gz;
    sha256 = "25e8d3dfaeea7a284535aee54c4c29820314da6ef916f75451ad1cbe95a6c185";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui qt-gui qt-gui-py-common rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_console is a Python GUI plugin providing an interactive Python console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
