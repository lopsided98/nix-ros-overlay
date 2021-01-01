
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, qt-gui, qt-gui-cpp, qt5, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rqt-gui-cpp";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_gui_cpp/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "d0958fbb96bdfc3dcd19d7ee86bed772f2b66a351a916c272d5a80cbd3935dc9";
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
