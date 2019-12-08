
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-cmake-core, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-nose";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_nose/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "5c1dcaf23d0df2f37fd484d0b7a49b297d3d24f2175e4e327ef5fa9610f48d58";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test python3Packages.nose ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add nose-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
