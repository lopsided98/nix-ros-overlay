
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-cmake-google-benchmark, ament-cmake-test, ament-lint-auto, ament-lint-common, google-benchmark-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-jazzy-performance-test-fixture";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test_fixture-release/archive/release/jazzy/performance_test_fixture/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "11712323a634d344a1d4010b4508126b4dc5f2936dc393932a0436b0becf23bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-export-targets ament-cmake-test ];
  checkInputs = [ ament-cmake-google-benchmark ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-google-benchmark google-benchmark-vendor osrf-testing-tools-cpp ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-export-targets ament-cmake-google-benchmark ament-cmake-test ];

  meta = {
    description = "Test fixture and CMake macro for using osrf_testing_tools_cpp with Google Benchmark";
    license = with lib.licenses; [ asl20 ];
  };
}
