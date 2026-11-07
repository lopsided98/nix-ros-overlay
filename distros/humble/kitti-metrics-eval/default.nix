
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, eigen, mola-common, mrpt-math, mrpt-poses }:
buildRosPackage {
  pname = "ros-humble-kitti-metrics-eval";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/humble/kitti_metrics_eval/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "e18759c525ca95958471398d1db727724d1d8524955f8ae6554cb44876a11f8d";
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
