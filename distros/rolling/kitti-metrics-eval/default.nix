
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmath, mrpt-libposes, mrpt-libtclap }:
buildRosPackage {
  pname = "ros-rolling-kitti-metrics-eval";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/kitti_metrics_eval/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "a1bb9bc0940897b344637accca4f00d71fff66a29d8d95ef08883c1eeff65221";
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
