
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-noetic-ros-industrial-cmake-boilerplate";
  version = "0.2.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_industrial_cmake_boilerplate-release/archive/release/noetic/ros_industrial_cmake_boilerplate/0.2.16-1.tar.gz";
    name = "0.2.16-1.tar.gz";
    sha256 = "207b6d1ee9c8f6cf12c189ea22497b21be84a7ab8d7507e0810ec3c9f9ab10f7";
  };

  buildType = "cmake";
  checkInputs = [ clang cppcheck gtest include-what-you-use lcov ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains boilerplate cmake script, macros and utils'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
