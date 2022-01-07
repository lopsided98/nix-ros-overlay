
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-cmake-google-benchmark, ament-cmake-test, ament-lint-auto, ament-lint-common, google-benchmark-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-galactic-performance-test-fixture";
  version = "0.0.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test_fixture-release/archive/release/galactic/performance_test_fixture/0.0.7-2.tar.gz";
    name = "0.0.7-2.tar.gz";
    sha256 = "7efc223f59b996e797881d77bf072c9f5a7d7b428ff5af79f42a0f5c5a0f2640";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-google-benchmark ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-google-benchmark google-benchmark-vendor osrf-testing-tools-cpp ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-export-targets ament-cmake-test ];

  meta = {
    description = ''Test fixture and CMake macro for using osrf_testing_tools_cpp with Google Benchmark'';
    license = with lib.licenses; [ asl20 ];
  };
}
