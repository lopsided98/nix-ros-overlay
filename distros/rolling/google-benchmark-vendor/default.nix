
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-rolling-google-benchmark-vendor";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/rolling/google_benchmark_vendor/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "8cd2b4cb9d9434426471e90436e3c64a502f646f25cfe7a73ceff7bd98e6e4a3";
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
