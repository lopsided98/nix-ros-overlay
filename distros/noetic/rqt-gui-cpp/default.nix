
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, qt-gui, qt-gui-cpp, qt5, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rqt-gui-cpp";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_gui_cpp/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "1b87265e422398938561fb938fc66f820ff63f28f5c8da4b198410b3eeb2f5cf";
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
