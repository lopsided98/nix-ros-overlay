
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-test, gmock-vendor, gmock }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-gmock";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_gmock/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "4117982aa38392d3fdb94a27f46863791d7885ddef97ae4a156a9375dc2a4367";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test ament-cmake-gtest gmock gmock-vendor ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add Google mock-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
