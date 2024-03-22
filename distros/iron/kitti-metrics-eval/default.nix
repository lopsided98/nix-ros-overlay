
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-kitti-metrics-eval";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/kitti_metrics_eval/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e636539836ef1d0be216efa9b46e2faf6d1dc3b5629efea9f41fc3e804701c39";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CLI tool to evaluate the KITTI odometry bechmark metrics to trajectory files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
