
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-galactic-ament-cmake-export-include-directories";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/galactic/ament_cmake_export_include_directories/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "91022216dcc2b66af5850bea9d5bd29278f195f6c8783c31dc7a562fc50024a5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export include directories to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
