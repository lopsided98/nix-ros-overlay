
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-kitti-metrics-eval";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/kitti_metrics_eval/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a39e8f26939190a8bddd07db011ecf5c8b6edfbadf35028e0469c388835c3a92";
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
