
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-rolling-google-benchmark-vendor";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/rolling/google_benchmark_vendor/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "3be080250c6276363a89e0e8407c1803b6246bd881a1bfd86068a4d527c86416";
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
