
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pytest";
  version = "2.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_pytest/2.8.3-1.tar.gz";
    name = "2.8.3-1.tar.gz";
    sha256 = "35b97d973e8ff8b47b75d7ea87ddd1b06653c3ac6ba648eb3c203c6fb180bab6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];

  meta = {
    description = "The ability to run Python tests using pytest in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
