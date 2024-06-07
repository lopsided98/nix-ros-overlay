
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt5, sqlite, zlib }:
buildRosPackage {
  pname = "ros-rolling-rtabmap";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/rolling/rtabmap/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "f8756541d4bfd96f0308c38c1afbaf8c344e542ba9d218b20c08c3c75d789405";
  };

  buildType = "cmake";
  buildInputs = [ cmake proj ];
  propagatedBuildInputs = [ cv-bridge gtsam libg2o libpointmatcher octomap pcl qt5.qtbase sqlite zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RTAB-Map's standalone library. RTAB-Map is a RGB-D SLAM approach with real-time constraints.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
