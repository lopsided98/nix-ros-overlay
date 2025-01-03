
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-cmake-helpers";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_cmake_helpers/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "a3eb9359829359de02a4f3619978b0bb0414ca416c10a0aee31b0d54615f44fa";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake support functionality used throughout grid_map";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
