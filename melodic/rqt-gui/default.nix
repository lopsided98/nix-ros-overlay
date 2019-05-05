
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-melodic-rqt-gui";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_gui/0.5.0-0.tar.gz;
    sha256 = "d6a9306b14facf26f432b32e9946daa1aa3c10c6f6d053e3a701bfab10e3200a";
  };

  buildInputs = [ qt-gui ];
  propagatedBuildInputs = [ catkin qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
