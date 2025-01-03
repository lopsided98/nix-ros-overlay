
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, grid-map-core, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt-gui-cpp, sqlite, zlib }:
buildRosPackage {
  pname = "ros-noetic-rtabmap";
  version = "0.21.9-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap-release/archive/release/noetic/rtabmap/0.21.9-1.tar.gz";
    name = "0.21.9-1.tar.gz";
    sha256 = "bd24763dc91db69605a2bc4fb59513f45c2fc23ea0eec839eb8e313b84f157c9";
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
