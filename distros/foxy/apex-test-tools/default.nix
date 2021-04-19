
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-foxy-apex-test-tools";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_test_tools-release/-/archive/release/foxy/apex_test_tools/0.0.2-1/apex_test_tools-release-release-foxy-apex_test_tools-0.0.2-1.tar.gz";
    name = "apex_test_tools-release-release-foxy-apex_test_tools-0.0.2-1.tar.gz";
    sha256 = "5397b4f6725e6f7a8ade5832dd802bbe9b9506fa69f2ab7402c6ebb840c3a260";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pclint ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-gtest osrf-testing-tools-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''The package Apex.OS Test Tools contains test helpers'';
    license = with lib.licenses; [ asl20 ];
  };
}
