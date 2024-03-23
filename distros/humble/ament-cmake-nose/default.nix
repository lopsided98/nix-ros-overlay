
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-nose";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_nose/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "2134fb63b0a98644419080c1e7eeabcbee798128a12a8148cdca4efccea1dbf7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.nose ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.nose ];

  meta = {
    description = "The ability to add nose-based tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
