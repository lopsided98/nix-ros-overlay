
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-google-benchmark";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_google_benchmark/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "02dab6e47616314bd6549ea3458346544c14362b08db475003c59f0a6dd9ee51";
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
