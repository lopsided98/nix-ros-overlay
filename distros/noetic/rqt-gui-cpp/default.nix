
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, qt-gui, qt-gui-cpp, qt5, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rqt-gui-cpp";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_gui_cpp/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "e9aec2c014514536ed0f1619764b9e944917c7f993760c06c5641f936bf5e792";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ nodelet qt-gui qt-gui-cpp roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
