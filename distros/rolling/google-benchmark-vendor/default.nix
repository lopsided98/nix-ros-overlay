
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-rolling-google-benchmark-vendor";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/rolling/google_benchmark_vendor/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "49e57dbb0d7c483d832817f0fc96d51b337894726f81e3a5fcaf756c6d4bb7d0";
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
