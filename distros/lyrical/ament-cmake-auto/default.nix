
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-auto";
  version = "2.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_auto/2.8.7-3.tar.gz";
    name = "2.8.7-3.tar.gz";
    sha256 = "7e28529a317c3d16f07260b17b26ffae16bec1131b1ad472bdce9cb80bfa1123";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ];

  meta = {
    description = "The auto-magic functions for ease to use of the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
