
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-humble-apex-test-tools";
  version = "0.0.2-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/humble/apex_test_tools/0.0.2-6.tar.gz";
    name = "0.0.2-6.tar.gz";
    sha256 = "78a7cde3a6e6205b4f0fbb4256c17a0b72b9693042aac6bd7d8ecb17c0b73a2a";
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
