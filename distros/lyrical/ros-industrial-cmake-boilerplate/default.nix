
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-lyrical-ros-industrial-cmake-boilerplate";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/lyrical/ros_industrial_cmake_boilerplate/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "4efb7a061f6b56bafc2c016bd22c4d6a901982bffb01433100e38590e56cc080";
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
