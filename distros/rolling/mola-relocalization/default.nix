
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-pose-list, mola-test-datasets, mp2p-icp, mrpt-libmaps, mrpt-libobs, mrpt-libslam }:
buildRosPackage {
  pname = "ros-rolling-mola-relocalization";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_relocalization/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "c7caf3f5197bb5be82cf00512c41f67342803395b64b8adfb1cc45dae05f251c";
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
