
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-export-include-directories";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_export_include_directories/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "d51a1a9e0cbdd4ca1e47cb2322c223c39706e46e2f0b4fc6132f091dcf2c497e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export include directories to downstream packages in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
