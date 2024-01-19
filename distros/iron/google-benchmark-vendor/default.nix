
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-iron-google-benchmark-vendor";
  version = "0.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/iron/google_benchmark_vendor/0.3.0-4.tar.gz";
    name = "0.3.0-4.tar.gz";
    sha256 = "0e920c40f7f85689d3bd8fb52e2e6a274eac04d6f4e9222fcf7304282b155371";
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
