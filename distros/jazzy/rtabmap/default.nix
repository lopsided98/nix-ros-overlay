
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt-gui-cpp, sqlite, tbb_2021_11, zlib }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap";
  version = "0.21.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/jazzy/rtabmap/0.21.6-1.tar.gz";
    name = "0.21.6-1.tar.gz";
    sha256 = "136f1369ca11bc763f2bb5f26bc8aa536af12329150b7915746bf50cf0ba505e";
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
