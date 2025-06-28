
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-kilted-apex-test-tools";
  version = "0.0.2-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/kilted/apex_test_tools/0.0.2-9.tar.gz";
    name = "0.0.2-9.tar.gz";
    sha256 = "9cf8a76faa327c6d609dc9125e2c5d1325aca14c97ab943e96743902c39a04e4";
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
