
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-pytest";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_pytest/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "3bc71fc8b1340e6425d50b526516b2172c2e701199ed2ff4913e1ed1928883b9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];

  meta = {
    description = ''The ability to run Python tests using pytest in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
