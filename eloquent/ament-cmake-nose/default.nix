
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-nose";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/eloquent/ament_cmake_nose/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "15946f2d207564c901b3f25447f1c1ce8ac406fd1abcea8b5e8c56dcb1dae131";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.nose ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add nose-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
