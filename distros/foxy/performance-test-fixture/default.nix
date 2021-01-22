
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-cmake-google-benchmark, ament-cmake-test, ament-lint-auto, ament-lint-common, google-benchmark-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-foxy-performance-test-fixture";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test_fixture-release/archive/release/foxy/performance_test_fixture/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "bb991825295f8847d1961b384890df1dc2060d038b8a032dd44417fb78557d1f";
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
