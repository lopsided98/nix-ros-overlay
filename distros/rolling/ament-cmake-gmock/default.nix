
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-test, gmock-vendor, gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-gmock";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_gmock/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "9e48b6fc5581fee4f2429755199ec5dc098cbb9d3a3adc79bdd6e9a07b21b201";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-gtest ament-cmake-test gmock-vendor gtest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-gtest ament-cmake-test gmock-vendor gtest ];

  meta = {
    description = "The ability to add Google mock-based tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
