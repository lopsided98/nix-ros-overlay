
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-rolling-ros-industrial-cmake-boilerplate";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/rolling/ros_industrial_cmake_boilerplate/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "6e014a77a649487fa450e97a6d61fe76e6bcd5292f01ce9cbd2bdd38c33754e0";
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
