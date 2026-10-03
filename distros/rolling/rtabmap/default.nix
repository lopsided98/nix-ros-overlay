
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, octomap, pcl, proj, qt5, sqlite, zlib }:
buildRosPackage {
  pname = "ros-rolling-rtabmap";
  version = "0.23.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/rolling/rtabmap/0.23.13-1.tar.gz";
    name = "0.23.13-1.tar.gz";
    sha256 = "a9f207d5e0bd2db05add291670fb7b8d0f0853e22daaf9a4552010ba93e2a8dd";
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
