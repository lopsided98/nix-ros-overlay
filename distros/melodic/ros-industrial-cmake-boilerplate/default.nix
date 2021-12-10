
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-melodic-ros-industrial-cmake-boilerplate";
  version = "0.2.14-r2";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_industrial_cmake_boilerplate-release/archive/release/melodic/ros_industrial_cmake_boilerplate/0.2.14-2.tar.gz";
    name = "0.2.14-2.tar.gz";
    sha256 = "9a6130047e9bbdf8f4b0788ccee0d298f64cc9f690b1b898f3d941cbe5f3f7db";
  };

  buildType = "cmake";
  checkInputs = [ clang cppcheck gtest include-what-you-use lcov ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains boilerplate cmake script, macros and utils'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
