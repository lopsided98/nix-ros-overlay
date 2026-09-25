
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, eigen, mola-common, mrpt-math, mrpt-poses }:
buildRosPackage {
  pname = "ros-rolling-kitti-metrics-eval";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/rolling/kitti_metrics_eval/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "1e193bab82b53b06162b3f2be1bb333d2265b8b920fcf73d66dab9ce95c8c16a";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ cli11 mola-common mrpt-math mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tool to evaluate the KITTI odometry bechmark metrics to trajectory files";
    license = with lib.licenses; [ bsd3 ];
  };
}
