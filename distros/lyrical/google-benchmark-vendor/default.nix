
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-lyrical-google-benchmark-vendor";
  version = "0.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/lyrical/google_benchmark_vendor/0.7.0-3.tar.gz";
    name = "0.7.0-3.tar.gz";
    sha256 = "fc1f860ec3766cf981c59fc8a34372639d3651eef1fefe04f20ebbd4d5d83c48";
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
