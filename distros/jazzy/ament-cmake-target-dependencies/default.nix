
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-include-directories, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-target-dependencies";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_target_dependencies/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "5c312ac38abd38e1d7253ec984b9bd2e47843b7a28558a550653bfa0ba354cd7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];

  meta = {
    description = "The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
