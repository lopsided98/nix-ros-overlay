
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-noetic-ros-industrial-cmake-boilerplate";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_industrial_cmake_boilerplate-release/archive/release/noetic/ros_industrial_cmake_boilerplate/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "e5be9fe0af76ea66f796c769ff8a89f3e84e6f7b4da68a9a9e0fafd89dbf6c82";
  };

  buildType = "cmake";
  checkInputs = [ clang cppcheck gtest include-what-you-use lcov ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains boilerplate cmake script, macros and utils'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
