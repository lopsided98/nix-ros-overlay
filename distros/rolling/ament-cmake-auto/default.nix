
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-auto";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_auto/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "1234bca8e440c33f028a7340e0e98bff5be52e918ee93d8f7a17aa7260dc4b7e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
