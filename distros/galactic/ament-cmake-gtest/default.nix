
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, gtest, gtest-vendor }:
buildRosPackage {
  pname = "ros-galactic-ament-cmake-gtest";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/galactic/ament_cmake_gtest/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "52393dd385addc7ff94a76aaf63659fee98d7cb206da4e5b136c45298c0ceb5c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test gtest gtest-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test gtest gtest-vendor ];

  meta = {
    description = ''The ability to add gtest-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
