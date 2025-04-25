
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pytest";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_pytest/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "53fa61ac7c0198c15724976fe28246273440bdcd679b202ed70f203573f06463";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];

  meta = {
    description = "The ability to run Python tests using pytest in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
