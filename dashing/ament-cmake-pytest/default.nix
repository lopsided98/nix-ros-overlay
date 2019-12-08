
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, pythonPackages, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-pytest";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_pytest/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "404c5c7909190f7c6ab90b44c009dd4e5bebb0ceada24caa019475852777948d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test pythonPackages.pytest ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to run Python tests using pytest in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
