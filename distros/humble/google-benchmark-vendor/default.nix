
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gbenchmark, git }:
buildRosPackage {
  pname = "ros-humble-google-benchmark-vendor";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/google_benchmark_vendor-release/archive/release/humble/google_benchmark_vendor/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "ebd71b641bbcec01396c4e495525eb8c2ccd92580fe6ce2a14d82dc50d714c4e";
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
