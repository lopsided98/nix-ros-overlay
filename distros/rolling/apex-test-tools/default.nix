
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-rolling-apex-test-tools";
  version = "0.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/rolling/apex_test_tools/0.0.2-5.tar.gz";
    name = "0.0.2-5.tar.gz";
    sha256 = "4f0cdb7f82288de707a0bb521f4a6f368860ab106722b5611aa78244ee9a8bc9";
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
