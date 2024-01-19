
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-iron-ros-industrial-cmake-boilerplate";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/iron/ros_industrial_cmake_boilerplate/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "5b3ac4f7e1ade61158809cfd1a370d45b173b1649ab3abbd8221e6b6d8c4b0c4";
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
