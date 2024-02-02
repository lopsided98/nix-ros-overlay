
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-include-directories";
  version = "1.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_include_directories/1.3.7-1.tar.gz";
    name = "1.3.7-1.tar.gz";
    sha256 = "cd8c0a71256a27fec524d9f549e387f9738182745794b6195dbc36e5cfc09af9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The functionality to order include directories according to a chain of prefixes in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
