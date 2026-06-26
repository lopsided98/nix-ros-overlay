
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt-gui-cpp, sqlite, zlib }:
buildRosPackage {
  pname = "ros-humble-rtabmap";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/humble/rtabmap/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "a743fc03dfe93f6b033d649fa70455ca3425bb0c01f2abf49142ecb50ebc21cb";
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
