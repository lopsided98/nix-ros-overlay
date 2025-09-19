
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-kilted-grid-map-cmake-helpers";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/kilted/grid_map_cmake_helpers/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "cc61266b6febd96b6c9102e945f0132335ffdcb945dcc8ca0e562c6473bbeb43";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake support functionality used throughout grid_map";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
