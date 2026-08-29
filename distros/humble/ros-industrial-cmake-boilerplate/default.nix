
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-humble-ros-industrial-cmake-boilerplate";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/humble/ros_industrial_cmake_boilerplate/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "bc4cac066f20286b0411d615b2747d5a9815e62db99c5f5c5e655b946629dc84";
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
