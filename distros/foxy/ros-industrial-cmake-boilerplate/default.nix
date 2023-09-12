
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-foxy-ros-industrial-cmake-boilerplate";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_industrial_cmake_boilerplate-release/archive/release/foxy/ros_industrial_cmake_boilerplate/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "9d8fec7ce0f41a5607ee50629b56470cea02f1129222876140388ccf3f8e98a7";
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
