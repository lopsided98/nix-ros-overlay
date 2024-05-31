
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-jazzy-ros-industrial-cmake-boilerplate";
  version = "0.5.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/jazzy/ros_industrial_cmake_boilerplate/0.5.4-3.tar.gz";
    name = "0.5.4-3.tar.gz";
    sha256 = "d4d856449e5a729cdb34844775b724d9940c31aac5342128961c171f3b5277b6";
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
