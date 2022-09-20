
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, qt-gui, qt-gui-cpp, qt5, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rqt-gui-cpp";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_gui_cpp/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "65ee396bb3941ccfd248b8357c082ce3ba37d3b68e634143e2af493a79c1227e";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  propagatedBuildInputs = [ nodelet qt-gui qt-gui-cpp roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
