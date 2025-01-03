
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-include-directories, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-target-dependencies";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_target_dependencies/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "fc8e11fb5497d2e29df03ccc6d614edd3d65b48cd8b0b3f611d9f4c09744faee";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];

  meta = {
    description = "The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
