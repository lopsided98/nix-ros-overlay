
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-analog-outputs";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_analog_outputs/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "11fdb823ce48393ccd28ecf1eb3cc1dd8040bea571f39b0d87b5f269290aad92";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Analog Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
