
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-include-directories, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-target-dependencies";
  version = "2.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_target_dependencies/2.8.7-1.tar.gz";
    name = "2.8.7-1.tar.gz";
    sha256 = "cc415cf1b97c5c5663028d997cb8bff03db2210cc380a3207b4ef2bc38f66702";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];

  meta = {
    description = "The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
