
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-include-directories";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/eloquent/ament_cmake_include_directories/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "dcec58e173a6c49cf793f79b2ea946c2f2a1475d462242f6b9647baea28d4ef9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The functionality to order include directories according to a chain of prefixes in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
