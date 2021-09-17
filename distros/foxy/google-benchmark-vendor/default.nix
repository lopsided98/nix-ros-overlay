
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark }:
buildRosPackage {
  pname = "ros-foxy-google-benchmark-vendor";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/foxy/google_benchmark_vendor/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "6f2e2e257bb774b9d6746c39f86fc8b32a24f4edd27773939110f9b32e9705f4";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ gbenchmark ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package provides Google Benchmark.'';
    license = with lib.licenses; [ asl20 ];
  };
}
