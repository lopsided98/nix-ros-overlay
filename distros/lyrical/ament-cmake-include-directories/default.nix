
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-include-directories";
  version = "2.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_include_directories/2.8.7-3.tar.gz";
    name = "2.8.7-3.tar.gz";
    sha256 = "bb47750e6eb1008dc57651e3b7efdd4605c3e83193eca518a68d133f04f30800";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to order include directories according to a chain of prefixes in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
