
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-export-include-directories";
  version = "2.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_export_include_directories/2.3.2-3.tar.gz";
    name = "2.3.2-3.tar.gz";
    sha256 = "4a9a5c07782701bdce4acc999d98c455743ed6f05eacc06f8d7199abcd45bff7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export include directories to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
