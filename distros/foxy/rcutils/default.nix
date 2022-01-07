
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, mimick-vendor, osrf-testing-tools-cpp, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-rcutils";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/foxy/rcutils/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "4c6206bfebf5686a888d7fc0adcfb7aa863f9d9eb7fbca9849dc2954d833adef";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake mimick-vendor osrf-testing-tools-cpp ];
  nativeBuildInputs = [ ament-cmake-ros python3Packages.empy ];

  meta = {
    description = ''Package containing various utility types and functions for C'';
    license = with lib.licenses; [ asl20 ];
  };
}
