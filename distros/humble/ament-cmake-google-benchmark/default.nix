
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-google-benchmark";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_google_benchmark/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "aa8427b43f2d80fa71482a1a8254db498aa433263df0585553b6a940be0a2943";
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
