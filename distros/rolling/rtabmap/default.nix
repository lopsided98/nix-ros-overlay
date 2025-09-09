
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt5, sqlite, tbb_2021_11, zlib }:
buildRosPackage {
  pname = "ros-rolling-rtabmap";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/rolling/rtabmap/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "7359d2768f9ec8a1e891edfee153aba15769443bb0debd17bde40ad84317096d";
  };

  buildType = "cmake";
  buildInputs = [ cmake proj ];
  propagatedBuildInputs = [ cv-bridge gtsam libg2o libpointmatcher octomap pcl qt5.qtbase sqlite tbb_2021_11 zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RTAB-Map's standalone library. RTAB-Map is a RGB-D SLAM approach with real-time constraints.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
