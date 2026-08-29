
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-kilted-ros-industrial-cmake-boilerplate";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/kilted/ros_industrial_cmake_boilerplate/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "766a020d9059368186b6a698509522e7bc9abb17a5d18834301692a5fd2d5b5c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ clang cppcheck gtest include-what-you-use lcov ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Contains boilerplate cmake script, macros and utils";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
