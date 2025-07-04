
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-include-directories, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-target-dependencies";
  version = "2.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_target_dependencies/2.8.4-1.tar.gz";
    name = "2.8.4-1.tar.gz";
    sha256 = "72bf620657f51d37f3ab4e7bb42c71438e923e508c1dcef0ca53b9d1a19f9cb9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];

  meta = {
    description = "The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
