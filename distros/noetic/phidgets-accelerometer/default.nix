
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-accelerometer";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_accelerometer/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "0f39ce926508512bcdfbb4bc5c3bb85bdae880926080b5e5e9e7cf7f00ce7233";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Accelerometer devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
