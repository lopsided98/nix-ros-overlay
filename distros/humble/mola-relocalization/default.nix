
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-pose-list, mola-test-datasets, mp2p-icp, mrpt-libmaps, mrpt-libobs, mrpt-libslam }:
buildRosPackage {
  pname = "ros-humble-mola-relocalization";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_relocalization/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "250a02463838113bfb74ff0e0482a12a6f2a743a466559bd54801a18c5f2ae16";
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
