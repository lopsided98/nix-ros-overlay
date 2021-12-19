
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark }:
buildRosPackage {
  pname = "ros-galactic-google-benchmark-vendor";
  version = "0.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/galactic/google_benchmark_vendor/0.0.6-2.tar.gz";
    name = "0.0.6-2.tar.gz";
    sha256 = "0b3488efddcc715e30e03a526a51e0a1f3900cdfd7c54f992f4dd4d8041537ee";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ gbenchmark ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package provides Google Benchmark.'';
    license = with lib.licenses; [ asl20 ];
  };
}
