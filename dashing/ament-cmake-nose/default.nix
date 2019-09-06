
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-cmake-core, python3Packages }:
buildRosPackage rec {
  pname = "ros-dashing-ament-cmake-nose";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_nose/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "2901f185b0dffc42878d8ff55e270b8a825a787aadda218b82a4fab648c20e65";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test python3Packages.nose ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add nose-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
