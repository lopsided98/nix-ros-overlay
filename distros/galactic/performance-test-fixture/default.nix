
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-export-targets, ament-cmake-google-benchmark, ament-cmake-test, ament-lint-auto, ament-lint-common, google-benchmark-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-galactic-performance-test-fixture";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/performance_test_fixture-release/archive/release/galactic/performance_test_fixture/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "9324dde4251b70c1e2d6442358e5a92ff60b1d3d9ef98f0812820de20154aaed";
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
