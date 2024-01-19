
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-scan-sparsifier";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/laser_scan_sparsifier/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "abcf8d1165bbc032cfb79b9f931007a583ec7823ce69131223ff9e3bfe6d0727";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_sparsifier takes in a LaserScan message and sparsifies it.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
