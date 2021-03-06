
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-scan-sparsifier";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/noetic/laser_scan_sparsifier/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "5afafd970b7168c341b18704b5592f793957f9d08870509ab3e46922d6f79741";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_sparsifier takes in a LaserScan message and sparsifies it.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
