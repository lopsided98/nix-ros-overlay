
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-noetic-ros-industrial-cmake-boilerplate";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_industrial_cmake_boilerplate-release/archive/release/noetic/ros_industrial_cmake_boilerplate/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "724e0b9dd9e5fe54ec6aae8409e4e84ce2e34534c8f452a3e06b68059c34fdd5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ clang cppcheck gtest include-what-you-use lcov ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains boilerplate cmake script, macros and utils'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
