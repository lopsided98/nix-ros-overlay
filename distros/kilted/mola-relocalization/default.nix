
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-pose-list, mola-test-datasets, mp2p-icp, mrpt-libmaps, mrpt-libobs, mrpt-libslam }:
buildRosPackage {
  pname = "ros-kilted-mola-relocalization";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_relocalization/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "552756a2cd9c41c804e964b9b00e328bd24061d8447d5bec4a2d2a09a7f363f8";
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
