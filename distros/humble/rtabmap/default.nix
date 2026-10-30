
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt-gui-cpp, sqlite, zlib }:
buildRosPackage {
  pname = "ros-humble-rtabmap";
  version = "0.23.14-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/humble/rtabmap/0.23.14-2.tar.gz";
    name = "0.23.14-2.tar.gz";
    sha256 = "fbd34353da4b129a05b9c26125f194b026bfe5b6a9d50bfa52985e6637f83841";
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
