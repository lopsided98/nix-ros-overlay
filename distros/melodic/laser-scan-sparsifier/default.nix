
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-laser-scan-sparsifier";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/melodic/laser_scan_sparsifier/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "43fa615c88414d204c326f4bb56f75fd887dcba367211d0b00ebbd17ff2cdab9";
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
