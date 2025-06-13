
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt-gui-cpp, sqlite, tbb_2021_11, zlib }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/jazzy/rtabmap/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "44e93558d439917cc4128bd8d31197b92dd1759a827ea8f09c05a3977aff2a8f";
  };

  buildType = "cmake";
  buildInputs = [ cmake proj ];
  propagatedBuildInputs = [ cv-bridge gtsam libg2o libpointmatcher octomap pcl qt-gui-cpp sqlite tbb_2021_11 zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RTAB-Map's standalone library. RTAB-Map is a RGB-D SLAM approach with real-time constraints.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
