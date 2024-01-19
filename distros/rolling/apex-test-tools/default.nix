
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-rolling-apex-test-tools";
  version = "0.0.2-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/rolling/apex_test_tools/0.0.2-7.tar.gz";
    name = "0.0.2-7.tar.gz";
    sha256 = "3e8bb25981acc3826317e1e47deff125622ed52f095f4fd03c6c85c012d07f8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-cmake-pclint ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-gtest osrf-testing-tools-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''The package Apex.OS Test Tools contains test helpers'';
    license = with lib.licenses; [ asl20 ];
  };
}
