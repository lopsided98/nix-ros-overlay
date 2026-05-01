
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-lyrical-ros-industrial-cmake-boilerplate";
  version = "0.5.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/lyrical/ros_industrial_cmake_boilerplate/0.5.4-3.tar.gz";
    name = "0.5.4-3.tar.gz";
    sha256 = "11e6c40beda70c72c46a6b6e911d6abcee44305a385a785502a7008fd4d344ad";
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
