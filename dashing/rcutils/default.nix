
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-lint-common, ament-cmake-gmock, launch-testing, ament-cmake-gtest, launch, launch-testing-ament-cmake, python3Packages, ament-cmake-ros, ament-lint-auto, osrf-testing-tools-cpp }:
buildRosPackage rec {
  pname = "ros-dashing-rcutils";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/dashing/rcutils/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "74d694980d2aa8f36aa8bac7e861d432b37d837e984799860fab2231d7e75fef";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-common ament-cmake-gmock launch-testing ament-cmake-gtest launch launch-testing-ament-cmake ament-lint-auto osrf-testing-tools-cpp ];
  nativeBuildInputs = [ python3Packages.empy ament-cmake-ros ];

  meta = {
    description = ''Package containing various utility types and functions for C'';
    license = with lib.licenses; [ asl20 ];
  };
}
