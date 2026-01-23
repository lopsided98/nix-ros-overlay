
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-jazzy-google-benchmark-vendor";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/jazzy/google_benchmark_vendor/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "1c34828a4db79b79925e936163160901eb07660a2dda8b1c3b892faddd945621";
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
