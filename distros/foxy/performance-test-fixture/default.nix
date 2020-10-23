
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-cmake-google-benchmark, google-benchmark-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-foxy-performance-test-fixture";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test_fixture-release/archive/release/foxy/performance_test_fixture/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "c4a9db5f9ce013d8d79b6201006d77589eeb8e786845fbd26f058634d56933e5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-google-benchmark google-benchmark-vendor osrf-testing-tools-cpp ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-export-targets ];

  meta = {
    description = ''Test fixture and CMake macro for using osrf_testing_tools_cpp with Google Benchmark'';
    license = with lib.licenses; [ asl20 ];
  };
}
