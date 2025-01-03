
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-jazzy-apex-test-tools";
  version = "0.0.2-r9";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_test_tools-release/archive/release/jazzy/apex_test_tools/0.0.2-9.tar.gz";
    name = "0.0.2-9.tar.gz";
    sha256 = "f716ac2d5b53d3257c9b9bf1558ad08e8720ca0e4828021aa423a2800f2342ef";
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
