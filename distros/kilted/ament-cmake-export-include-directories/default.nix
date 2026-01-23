
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-export-include-directories";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/kilted/ament_cmake_export_include_directories/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "304883499ef572b365240114a24c9919504df41e4fefdc8d02f07a87592c5db7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export include directories to downstream packages in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
