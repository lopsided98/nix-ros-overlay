
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-grid-map-cmake-helpers";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map_cmake_helpers/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ad77ff8a542619abf163b4651da9d6ce14c5935cd784a4775d91a8b6f7e67999";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake support functionality used throughout grid_map";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
