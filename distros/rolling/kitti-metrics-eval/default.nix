
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmath, mrpt-libposes, mrpt-libtclap }:
buildRosPackage {
  pname = "ros-rolling-kitti-metrics-eval";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/kitti_metrics_eval/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "e03385cdee8c697011c34690e29a43d9c7e04a6062ae86998f5e80d9e9e6ab22";
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
