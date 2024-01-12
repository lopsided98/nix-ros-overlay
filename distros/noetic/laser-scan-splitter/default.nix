
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-scan-splitter";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/laser_scan_splitter/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "8f946f26793bd6f1345e686ecb39df34a1648e2a09e70ffe782c027986d7725c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_splitter takes in a LaserScan message and splits it into a number of other LaserScan messages. Each of the resulting laser scans can be assigned an arbitrary coordinate frame, and is published on a separate topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
