
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-include-directories, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-target-dependencies";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_target_dependencies/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "20d5a255e095a59f310bdea2e30f4523321166ccfc3848ce4c44ad6df0a4dd82";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];

  meta = {
    description = ''The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
