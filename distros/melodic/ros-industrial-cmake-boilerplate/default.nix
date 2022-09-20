
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-melodic-ros-industrial-cmake-boilerplate";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_industrial_cmake_boilerplate-release/archive/release/melodic/ros_industrial_cmake_boilerplate/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "c1fd60526708c9dc43dd084f70c339615ce93cea4861bc291a7735966eeb0c2c";
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
