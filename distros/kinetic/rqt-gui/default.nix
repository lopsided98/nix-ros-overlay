
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-kinetic-rqt-gui";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/kinetic/rqt_gui/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "ebc17ee30ca55f8db9ec9fc43bfecbe684e78fdff42ba8449069de593f7e1215";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
