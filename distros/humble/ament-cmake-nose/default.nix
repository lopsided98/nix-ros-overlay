
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-nose";
  version = "1.3.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_nose/1.3.14-1.tar.gz";
    name = "1.3.14-1.tar.gz";
    sha256 = "d5e51b5d8ecea3c5046a0099312928968350e60c0caa494f0b48f51ea40466f5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.nose ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.nose ];

  meta = {
    description = "The ability to add nose-based tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
