
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmath, mrpt-libposes, mrpt-libtclap }:
buildRosPackage {
  pname = "ros-rolling-kitti-metrics-eval";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/kitti_metrics_eval/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "00ed24e58d01edf4a37e4e426dd704170acb0d820efa730946878cc8ce5f10cc";
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
