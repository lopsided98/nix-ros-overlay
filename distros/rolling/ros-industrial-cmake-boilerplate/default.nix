
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-rolling-ros-industrial-cmake-boilerplate";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/rolling/ros_industrial_cmake_boilerplate/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "22d5987f57d65db8a62976ee2c48f6b06b4091b811e1dcdb660a2473a29af897";
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
