
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmath, mrpt-libposes, mrpt-libtclap }:
buildRosPackage {
  pname = "ros-rolling-kitti-metrics-eval";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/kitti_metrics_eval/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "d9fcb79860fd218de355430e829699af8c982bd9ff5c7458ec36910ddbf3b70a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-libmath mrpt-libposes mrpt-libtclap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tool to evaluate the KITTI odometry bechmark metrics to trajectory files";
    license = with lib.licenses; [ bsd3 ];
  };
}
