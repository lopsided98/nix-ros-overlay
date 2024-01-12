
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pytest";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_pytest/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "007c0ebd7c6e4b758d1f84ab5e5b847ae5275e2dabc0aaa16dadf50675e67248";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];

  meta = {
    description = ''The ability to run Python tests using pytest in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
