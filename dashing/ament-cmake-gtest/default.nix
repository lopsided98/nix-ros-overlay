
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, gtest, gtest-vendor, ament-cmake-core }:
buildRosPackage rec {
  pname = "ros-dashing-ament-cmake-gtest";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_gtest/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "0d52758eaa9fd6e581271868094ab4ef4b426757273ca0860d1cedff209fff97";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test gtest gtest-vendor ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add gtest-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
