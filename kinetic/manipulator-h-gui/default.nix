
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, qt4, catkin, robotis-controller-msgs, manipulator-h-base-module-msgs, qt-build, eigen-conversions, roscpp, eigen }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h-gui";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_gui/0.3.1-0.tar.gz;
    sha256 = "47c649a88882a1b2b0c985176e229316dafeef7f477cbd7775c5852394f2708a";
  };

  propagatedBuildInputs = [ cmake-modules manipulator-h-base-module-msgs qt-build qt4 eigen-conversions robotis-controller-msgs roscpp eigen ];
  nativeBuildInputs = [ cmake-modules qt4 catkin roscpp manipulator-h-base-module-msgs qt-build eigen-conversions robotis-controller-msgs eigen ];

  meta = {
    description = ''The manipulator_h_gui package
    This package provides simple GUI to control ROBOTIS MANIPULATOR-H.
    This GUI is connected to manipulator_h_base_module.'';
    #license = lib.licenses.Apache 2.0;
  };
}
