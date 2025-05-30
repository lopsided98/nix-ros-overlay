
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-pose-list, mola-test-datasets, mp2p-icp, mrpt-libmaps, mrpt-libobs, mrpt-libslam }:
buildRosPackage {
  pname = "ros-humble-mola-relocalization";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_relocalization/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "42f6441573d2823f91e406bf7450006b065eba26c5f888df3889189b7f029df0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ mola-test-datasets ];
  propagatedBuildInputs = [ mola-common mola-pose-list mp2p-icp mrpt-libmaps mrpt-libobs mrpt-libslam ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library with algorithms for relocalization, global localization, or pose estimation given a large initial uncertainty";
    license = with lib.licenses; [ gpl3Only ];
  };
}
