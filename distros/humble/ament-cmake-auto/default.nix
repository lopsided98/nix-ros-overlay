
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-auto";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_auto/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "eb6b95a6da39bc3fde90d2b3ab0ba6b5b71924189400b15b08b1941ef9ae8bc4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
