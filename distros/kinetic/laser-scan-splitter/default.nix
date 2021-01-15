
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-laser-scan-splitter";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/laser_scan_splitter/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "1ca78fa9bf67097693b7a19019a02b96ad48d310cf5d39e9a5e07d21b9f639ad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_splitter takes in a LaserScan message and splits it into a number of other LaserScan messages. Each of the resulting laser scans can be assigned an arbitrary coordinate frame, and is published on a separate topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
