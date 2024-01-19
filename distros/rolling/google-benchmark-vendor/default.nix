
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-rolling-google-benchmark-vendor";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/rolling/google_benchmark_vendor/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "35ff3fdde426c3eb0af6d2f1b73c996e5448b2bb075fe495c7f92d7bdf00c114";
  };

  buildType = "cmake";
  buildInputs = [ cmake git ];
  propagatedBuildInputs = [ gbenchmark ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = ''This package provides Google Benchmark.'';
    license = with lib.licenses; [ asl20 ];
  };
}
