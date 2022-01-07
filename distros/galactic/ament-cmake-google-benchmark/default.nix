
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-galactic-ament-cmake-google-benchmark";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/galactic/ament_cmake_google_benchmark/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "e3ac81b9c62bc3038d9f2a41d8c69c10e735af13ef5f6ca2fb833ed8cf6f689a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test google-benchmark-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-python ];

  meta = {
    description = ''The ability to add Google Benchmark tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
