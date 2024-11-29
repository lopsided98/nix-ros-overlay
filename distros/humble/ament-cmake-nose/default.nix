
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-nose";
  version = "1.3.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_nose/1.3.11-1.tar.gz";
    name = "1.3.11-1.tar.gz";
    sha256 = "56570f6628062453f89fe3903edb96826690734869e6e86afba283ca978d7dbd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.nose ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.nose ];

  meta = {
    description = "The ability to add nose-based tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
