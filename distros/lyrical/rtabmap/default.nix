
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, octomap, pcl, proj, qt-gui-cpp, sqlite, zlib }:
buildRosPackage {
  pname = "ros-lyrical-rtabmap";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/lyrical/rtabmap/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "7420effcaedcf4d8ba5c5001d2626c2741a64e439b4549867c35d61cfd28b583";
  };

  buildType = "cmake";
  buildInputs = [ cmake proj ];
  propagatedBuildInputs = [ cv-bridge gtsam libg2o octomap pcl qt-gui-cpp sqlite zlib ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "RTAB-Map's standalone library. RTAB-Map is a RGB-D SLAM approach with real-time constraints.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
