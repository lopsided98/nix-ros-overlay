
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-jazzy-kitti-metrics-eval";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/kitti_metrics_eval/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "a525848fa44f30172fbd19e60272f24fc72602645eb58f8dfe1a275707f175ba";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tool to evaluate the KITTI odometry bechmark metrics to trajectory files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
