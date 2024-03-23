
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-export-include-directories";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_export_include_directories/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "1239fe0c2a1218f6db578d997d5b5b50869584e06a99ccde910392a93437f04f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export include directories to downstream packages in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
