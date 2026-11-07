
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-include-directories";
  version = "2.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_include_directories/2.8.9-1.tar.gz";
    name = "2.8.9-1.tar.gz";
    sha256 = "65343b54e6ff959f0511b595d8bf4e724c3752df0dd5b9ec62fa343127048a0f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to order include directories according to a chain of prefixes in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
