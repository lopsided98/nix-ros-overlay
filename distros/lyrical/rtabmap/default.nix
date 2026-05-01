
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libpointmatcher, cmake, cv-bridge, gtsam, libg2o, octomap, onetbb, pcl, proj, qt5, sqlite, zlib }:
buildRosPackage {
  pname = "ros-lyrical-rtabmap";
  version = "0.22.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/lyrical/rtabmap/0.22.1-3.tar.gz";
    name = "0.22.1-3.tar.gz";
    sha256 = "f3c226f2654d03ecd73ae46c4536f9da796de08950c6b0dd1b0168ba282682c1";
  };

  buildType = "cmake";
  buildInputs = [ cmake proj ];
  propagatedBuildInputs = [ _unresolved_libpointmatcher cv-bridge gtsam libg2o octomap onetbb pcl qt5.qtbase sqlite zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RTAB-Map's standalone library. RTAB-Map is a RGB-D SLAM approach with real-time constraints.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
