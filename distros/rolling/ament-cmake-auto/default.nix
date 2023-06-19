
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-auto";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_auto/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "c545c3be4b8b007f912b5afb7bd895ed334786dfd101b7ea0174e7d766c487ba";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
