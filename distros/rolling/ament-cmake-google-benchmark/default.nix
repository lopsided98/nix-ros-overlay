
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-google-benchmark";
  version = "2.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_google_benchmark/2.8.4-1.tar.gz";
    name = "2.8.4-1.tar.gz";
    sha256 = "c8574df01bb177190549e3b6153c93a7426d5ffd3c86165bb2cb9a102eb20c42";
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
