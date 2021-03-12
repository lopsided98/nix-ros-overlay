
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-analog-inputs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_analog_inputs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "7dcd2bc2cd5afced604837687f56a436fc3ddd1195402ee25721773bf42d14dc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Analog Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
