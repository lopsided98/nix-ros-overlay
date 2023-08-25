
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-include-directories, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-target-dependencies";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_target_dependencies/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "17ba135c66fc9b8678dfc542ce1d2da9f46ee275bf3401fc4d00bbe016b634ce";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-include-directories ament-cmake-libraries ];

  meta = {
    description = ''The ability to add definitions, include directories and libraries of a package to a target in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
