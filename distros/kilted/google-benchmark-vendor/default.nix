
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-kilted-google-benchmark-vendor";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/kilted/google_benchmark_vendor/0.6.1-2.tar.gz";
    name = "0.6.1-2.tar.gz";
    sha256 = "1e13cd6b75d9f5e3b38668b0b5d0d6a562787246793531160d8d9fd1d67ab5e2";
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
