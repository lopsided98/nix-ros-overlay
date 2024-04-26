
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-google-benchmark";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_google_benchmark/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "31cb771d5bdbb58845b63cbf5a98efb6d1f4b8852e18da73784d71044adf8dfa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-test google-benchmark-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-python ];

  meta = {
    description = "The ability to add Google Benchmark tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
