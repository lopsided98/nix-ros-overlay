
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, gtest, gtest-vendor, ament-cmake-core }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-gtest";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_gtest/0.6.1-0.tar.gz;
    sha256 = "6fe61d406969f7576d21a3b43906813b932426ba44b83663a1e380cd320b37a4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test gtest gtest-vendor ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add gtest-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
