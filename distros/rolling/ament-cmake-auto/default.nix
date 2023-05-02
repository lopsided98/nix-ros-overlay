
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-auto";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_auto/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "00707cb3494b47d82158fe73dea219947df38e0c0a4bce09cdf9c5191ed0bb36";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
