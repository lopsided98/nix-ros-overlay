
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, grid-map-core, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt-gui-cpp, sqlite, zlib }:
buildRosPackage {
  pname = "ros-noetic-rtabmap";
  version = "0.21.6-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap-release/archive/release/noetic/rtabmap/0.21.6-1.tar.gz";
    name = "0.21.6-1.tar.gz";
    sha256 = "cda4b5d176db6243039740f7f0b049b3abc2bb433c41dec5bd6b722949814f5b";
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
