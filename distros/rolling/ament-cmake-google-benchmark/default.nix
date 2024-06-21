
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-google-benchmark";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_google_benchmark/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "058a5a092ed94d09ae7a4fbfd2d465a633ad80f09569da2c9bbe284a95e9d987";
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
