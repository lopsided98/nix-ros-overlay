
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-cmake-google-benchmark, ament-cmake-test, ament-lint-auto, ament-lint-common, google-benchmark-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-rolling-performance-test-fixture";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test_fixture-release/archive/release/rolling/performance_test_fixture/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "548b1746ce6c4c7d4692d86ba165cf8af0944a523e67cef468cfebce6fb88ef7";
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
