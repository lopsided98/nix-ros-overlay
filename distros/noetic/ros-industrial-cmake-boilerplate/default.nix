
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-noetic-ros-industrial-cmake-boilerplate";
  version = "0.2.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_industrial_cmake_boilerplate-release/archive/release/noetic/ros_industrial_cmake_boilerplate/0.2.11-1.tar.gz";
    name = "0.2.11-1.tar.gz";
    sha256 = "4471935a9ef992e8830fc007517492889d9867367285d3bf542eb22156440178";
  };

  buildType = "cmake";
  checkInputs = [ clang cppcheck gtest include-what-you-use lcov ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains boilerplate cmake script, macros and utils'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
