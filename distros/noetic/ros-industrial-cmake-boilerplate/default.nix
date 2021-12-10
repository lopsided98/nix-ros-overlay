
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-noetic-ros-industrial-cmake-boilerplate";
  version = "0.2.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_industrial_cmake_boilerplate-release/archive/release/noetic/ros_industrial_cmake_boilerplate/0.2.14-1.tar.gz";
    name = "0.2.14-1.tar.gz";
    sha256 = "8c4388e495af822b2fb4da7c0cc7b2cf1e9031f03ae79bbc363b60976a46a6d0";
  };

  buildType = "cmake";
  checkInputs = [ clang cppcheck gtest include-what-you-use lcov ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains boilerplate cmake script, macros and utils'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
