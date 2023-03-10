
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pytest";
  version = "1.5.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_pytest/1.5.3-2.tar.gz";
    name = "1.5.3-2.tar.gz";
    sha256 = "335d74c220e9e9ea5eba1edb3b79e1d99edbf9fd941e21eac2edfab9ac2b010b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];

  meta = {
    description = ''The ability to run Python tests using pytest in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
