
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-export-include-directories";
  version = "1.3.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_export_include_directories/1.3.13-1.tar.gz";
    name = "1.3.13-1.tar.gz";
    sha256 = "0ee941abb41ad0cb039db3c9cfd0d4ba917f74e158ebb7c8f63f979182962415";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export include directories to downstream packages in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
