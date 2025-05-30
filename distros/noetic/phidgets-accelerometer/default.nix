
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-accelerometer";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_accelerometer/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "00b2bb5381f39ce7b57e5e4a7780183acafe8ad557034e5378bfaa0202b4a64d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Driver for the Phidgets Accelerometer devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
