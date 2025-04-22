
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, python3Packages, qt-gui, qt-gui-cpp, qt5, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rqt-gui-cpp";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_gui_cpp/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "e6e742622dcf6d09df6275e042d52539efef6f7eeb0b164108b24d9c25bb4d5a";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools qt5.qtbase ];
  propagatedBuildInputs = [ nodelet qt-gui qt-gui-cpp roscpp ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
