
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-noetic-rqt-gui";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_gui/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "093b1dc485e6bddf4a6749ba56e475bb1ab0731d96091344967ffa60f379b662";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
