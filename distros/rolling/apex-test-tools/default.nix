
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-rolling-apex-test-tools";
  version = "0.0.2-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/rolling/apex_test_tools/0.0.2-8.tar.gz";
    name = "0.0.2-8.tar.gz";
    sha256 = "f173e2f842c01abc1ecbe667009876a5c9536cfc382baae4cf62b2c88dac6a06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-cmake-pclint ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-gtest osrf-testing-tools-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = "The package Apex.OS Test Tools contains test helpers";
    license = with lib.licenses; [ asl20 ];
  };
}
