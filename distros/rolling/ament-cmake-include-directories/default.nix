
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-include-directories";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_include_directories/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "ed1ee3cd5fb89e3d43eaef477e280facf683afba540cb0d787886e8f0c6d6822";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The functionality to order include directories according to a chain of prefixes in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
