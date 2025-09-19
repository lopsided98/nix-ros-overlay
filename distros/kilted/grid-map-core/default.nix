
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, grid-map-cmake-helpers }:
buildRosPackage {
  pname = "ros-kilted-grid-map-core";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/kilted/grid_map_core/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "7245102114c1640e8de340077bfa885bae54f4fe30ed50867d4e6fcc1c3062ef";
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
