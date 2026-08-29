
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-jazzy-ros-industrial-cmake-boilerplate";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_industrial_cmake_boilerplate-release/archive/release/jazzy/ros_industrial_cmake_boilerplate/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "04fcc7925a9fd2a34205f0698161822b359af0e6563d6f61efb5f0c0d6eca021";
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
