
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-libmath, mrpt-libposes, mrpt-libtclap }:
buildRosPackage {
  pname = "ros-kilted-kitti-metrics-eval";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/kitti_metrics_eval/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "9a9a725da678d259e6f97c21fc0dd99a85ddb39d0e89524d25339deb979777e8";
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
