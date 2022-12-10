
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-galactic-ament-cmake-export-include-directories";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/galactic/ament_cmake_export_include_directories/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "fcc7618dfcfac53212a5fb831df2f59d953c1c1422a6ab87000f89b1e65f796f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export include directories to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
