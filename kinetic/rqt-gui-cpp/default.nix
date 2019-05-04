
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui-cpp, qt-gui, qt5, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rqt-gui-cpp";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt-release/archive/release/kinetic/rqt_gui_cpp/0.5.0-0.tar.gz;
    sha256 = "7e649bc586f53c1e3d5d997916b7422b4097795580fdc9421898a3b54eae26c6";
  };

  buildInputs = [ qt5.qtbase qt-gui-cpp qt-gui nodelet roscpp ];
  propagatedBuildInputs = [ qt-gui-cpp roscpp qt-gui nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
