
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-humble-ros-industrial-cmake-boilerplate";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/humble/ros_industrial_cmake_boilerplate/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "2de9591ae16b9c0ab0fba3323a49c4b10b39218cc2a422b969aca01e70e0331c";
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
