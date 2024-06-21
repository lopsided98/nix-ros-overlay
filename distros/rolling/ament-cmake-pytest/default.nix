
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pytest";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_pytest/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "b55d3aee7bbab528d3e3a725cdf7c9ba46ac053918b36714abf4b2c017a52ed5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];

  meta = {
    description = "The ability to run Python tests using pytest in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
