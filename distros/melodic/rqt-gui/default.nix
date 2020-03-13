
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-melodic-rqt-gui";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_gui/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "e0e4e6b5c7d8778d50b0ebd32859e22667a8be4b44be41e93c46baaa18391b13";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
