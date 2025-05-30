
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt5, sqlite, tbb_2021_11, zlib }:
buildRosPackage {
  pname = "ros-kilted-rtabmap";
  version = "0.21.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/kilted/rtabmap/0.21.6-2.tar.gz";
    name = "0.21.6-2.tar.gz";
    sha256 = "6c716f22bf51db1bc86f7dde414e68a459149c7443f693b6fca11b2f27cacf45";
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
