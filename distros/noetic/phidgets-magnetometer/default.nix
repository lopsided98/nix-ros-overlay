
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-magnetometer";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_magnetometer/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "5244490a4ebe2847828cd46f0866eb63c2fb059c0566c51b8b663f77e7afe374";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Driver for the Phidgets Magnetometer devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
