
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cli11, cmake, eigen, mola-common, mrpt-math, mrpt-poses }:
buildRosPackage {
  pname = "ros-humble-kitti-metrics-eval";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/humble/kitti_metrics_eval/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "12af74de539722146145d7af2b6d106eb526527ee2fa29427628a93c9f08e913";
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
