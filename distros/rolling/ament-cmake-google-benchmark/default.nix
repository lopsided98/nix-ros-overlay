
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-google-benchmark";
  version = "2.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_google_benchmark/2.3.2-3.tar.gz";
    name = "2.3.2-3.tar.gz";
    sha256 = "e6d70aa41028b2520068e4dba0d0bfca86906e6027f2838e9a9a4f2d4954a183";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-test google-benchmark-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-python ];

  meta = {
    description = ''The ability to add Google Benchmark tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
