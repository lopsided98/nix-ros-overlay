
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-foxy-apex-test-tools";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_test_tools-release/-/archive/release/foxy/apex_test_tools/0.0.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "892bad4ede47e5e159b2d8ced4a6381f116176ecc5469783003c5cdf350ed661";
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
