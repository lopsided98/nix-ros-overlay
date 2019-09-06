
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-test, gmock-vendor, gmock }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-gmock";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_gmock/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "6cc97a96918c313c0e218958b05c99b96322373c24883ae920d7d22c98b835fd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test ament-cmake-gtest gmock gmock-vendor ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add Google mock-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
