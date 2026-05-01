
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-test, gtest }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-gmock";
  version = "2.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_gmock/2.8.7-3.tar.gz";
    name = "2.8.7-3.tar.gz";
    sha256 = "1ab856100ea04530a666aafb72ceddbd08f363f5c5fd52f64e10166436c4c60f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-gtest ament-cmake-test gtest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-gtest ament-cmake-test gtest ];

  meta = {
    description = "The ability to add Google mock-based tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
