
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-include-directories";
  version = "0.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_include_directories/0.9.9-1.tar.gz";
    name = "0.9.9-1.tar.gz";
    sha256 = "cf95b1ccc8341e476dc266c0854ba3411dde433c0a50d00a7277e044d837a765";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The functionality to order include directories according to a chain of prefixes in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
