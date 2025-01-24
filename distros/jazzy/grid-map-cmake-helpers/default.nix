
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-cmake-helpers";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_cmake_helpers/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "70f024afb20a23682af036ea2037039108250a073ce6fd337a8e9d4728953129";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake support functionality used throughout grid_map";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
