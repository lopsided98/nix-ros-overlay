
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-test, gmock-vendor, gtest }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-gmock";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_gmock/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "dfa7784b5778cd26d419f53249842a982491e33bf05c53e5d8353e9733350560";
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
