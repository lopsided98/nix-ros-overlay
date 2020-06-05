
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-magnetometer";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_magnetometer/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "83af2e0fb01bdc88b0107f169aaa9e74c66eb1f09dc6bbcd1d2f5fe3eeea1784";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Magnetometer devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
