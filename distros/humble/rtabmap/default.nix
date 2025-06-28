
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, cv-bridge, gtsam, libg2o, libpointmatcher, octomap, pcl, proj, qt-gui-cpp, sqlite, zlib }:
buildRosPackage {
  pname = "ros-humble-rtabmap";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap-release/archive/release/humble/rtabmap/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "4a3f9878e805eadfe3687a790b9e930d13635df285cbd3667ead26bc5311ca78";
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
