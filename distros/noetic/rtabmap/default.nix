
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, grid-map-core, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt-gui-cpp, sqlite, zlib }:
buildRosPackage {
  pname = "ros-noetic-rtabmap";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap-release/archive/release/noetic/rtabmap/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "7e01d73a35af9bbcd403143d29671479169708cd0eab0c94a33ef998da2d69e1";
  };

  buildType = "cmake";
  buildInputs = [ cmake proj ];
  propagatedBuildInputs = [ cv-bridge grid-map-core gtsam libg2o libpointmatcher octomap pcl qt-gui-cpp sqlite zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RTAB-Map's standalone library. RTAB-Map is a RGB-D SLAM approach with real-time constraints.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
