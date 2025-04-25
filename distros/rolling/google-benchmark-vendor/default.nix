
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-rolling-google-benchmark-vendor";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/rolling/google_benchmark_vendor/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "ced9b20515ee594fe6269120281f4f5f7dce5fb8dc6aad3c1ac016e72b70d942";
  };

  buildType = "cmake";
  buildInputs = [ cmake git ];
  propagatedBuildInputs = [ gbenchmark ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = "This package provides Google Benchmark.";
    license = with lib.licenses; [ asl20 ];
  };
}
