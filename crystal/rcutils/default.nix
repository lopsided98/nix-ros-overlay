
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-lint-common, ament-cmake-gmock, launch-testing, ament-cmake-gtest, python3Packages, ament-cmake-ros, ament-lint-auto, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-crystal-rcutils";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/crystal/rcutils/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "0fdb96bde3e98cd975529a326ffaf7ff763f51d523d5fc98fab8c6af6980b407";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-common ament-cmake-gmock launch-testing ament-cmake-gtest ament-lint-auto osrf-testing-tools-cpp ];
  nativeBuildInputs = [ python3Packages.empy ament-cmake-ros ];

  meta = {
    description = ''Package containing various utility types and functions for C'';
    license = with lib.licenses; [ asl20 ];
  };
}
