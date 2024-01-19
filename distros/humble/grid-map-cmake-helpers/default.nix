
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-grid-map-cmake-helpers";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map_cmake_helpers/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "bfb04f052926d584c05b994400ec8c827703c00183abfc847d9baa907be6b654";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''CMake support functionality used throughout grid_map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
