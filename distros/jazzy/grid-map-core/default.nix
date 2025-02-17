
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, grid-map-cmake-helpers }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-core";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_core/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "44d418e4f3a2a841174ba43d44c90ed4ad017e5a70a0e9661ebd98bec3d478d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Universal grid map library to manage two-dimensional grid maps with multiple data layers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
