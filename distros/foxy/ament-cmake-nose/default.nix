
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-nose";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_nose/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "3f7f35e815c545982748be62f8f3f96164d3eae4c398c1383cf7b9e8583c97cd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.nose ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add nose-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
