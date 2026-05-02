
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libpointmatcher, cmake, cv-bridge, gtsam, libg2o, octomap, onetbb, pcl, proj, qt5, sqlite, zlib }:
buildRosPackage {
  pname = "ros-rolling-rtabmap";
  version = "0.22.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/rolling/rtabmap/0.22.1-2.tar.gz";
    name = "0.22.1-2.tar.gz";
    sha256 = "0565814fd5ee62caccfe41e51789a6b0fd0a82ed905975dcbed2775dafa84fec";
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
