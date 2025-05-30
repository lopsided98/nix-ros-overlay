
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt-gui-cpp, sqlite, zlib }:
buildRosPackage {
  pname = "ros-noetic-rtabmap";
  version = "0.21.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap-release/archive/release/noetic/rtabmap/0.21.13-1.tar.gz";
    name = "0.21.13-1.tar.gz";
    sha256 = "56a14d61f5956a45a58f80267799abdd228712c0bf546e7fa7f40926ecafed22";
  };

  buildType = "cmake";
  buildInputs = [ cmake proj ];
  propagatedBuildInputs = [ cv-bridge gtsam libg2o libpointmatcher octomap pcl qt-gui-cpp sqlite zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RTAB-Map's standalone library. RTAB-Map is a RGB-D SLAM approach with real-time constraints.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
