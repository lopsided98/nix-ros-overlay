
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-laser-scan-sparsifier";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/laser_scan_sparsifier/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "10a428f5d23faabb6d9d82e72f935e3e9f12da1332434ea34f229a469ae44d89";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_sparsifier takes in a LaserScan message and sparsifies it.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
