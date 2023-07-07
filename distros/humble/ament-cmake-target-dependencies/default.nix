
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-include-directories, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-target-dependencies";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_target_dependencies/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "3227dc0bc47d106909b1893449bf7f6116d6ebd1a789d2a165e1fb197bbb45c3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];

  meta = {
    description = ''The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
