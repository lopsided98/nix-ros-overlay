
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-jazzy-google-benchmark-vendor";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/jazzy/google_benchmark_vendor/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "e801d0a3e4d2dd72c46da905eb161061114e9415e5b90165c15d66bb152c9ef9";
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
