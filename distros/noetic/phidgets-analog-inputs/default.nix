
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-analog-inputs";
  version = "1.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_analog_inputs/1.0.8-2.tar.gz";
    name = "1.0.8-2.tar.gz";
    sha256 = "47309ebea0e71e9cfe5268a64e1c060ad653d612e7c75ced9f994718e34f0893";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Analog Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
