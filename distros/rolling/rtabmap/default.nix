
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, octomap, pcl, proj, qt5, sqlite, zlib }:
buildRosPackage {
  pname = "ros-rolling-rtabmap";
  version = "0.23.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/rolling/rtabmap/0.23.14-1.tar.gz";
    name = "0.23.14-1.tar.gz";
    sha256 = "5c9e3a0028c80440b10f705c9fd0e2d4693993cefcf1d04df9fce5f07f56e968";
  };

  buildType = "cmake";
  buildInputs = [ cmake proj ];
  propagatedBuildInputs = [ cv-bridge gtsam libg2o octomap pcl qt5.qtbase sqlite zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RTAB-Map's standalone library. RTAB-Map is a RGB-D SLAM approach with real-time constraints.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
