
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-cmake-helpers";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_cmake_helpers/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "ac4acf9f06b7fd9329f7e58e3836b55b6bcf7bdd17c4c63d9d853a86cb163360";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake support functionality used throughout grid_map";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
