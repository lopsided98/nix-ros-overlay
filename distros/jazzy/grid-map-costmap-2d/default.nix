
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, grid-map-cmake-helpers, grid-map-core, nav2-costmap-2d, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-costmap-2d";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_costmap_2d/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "7e7cd43c9491796411f0c57243569b7a05b1d027304130187e2933a09a6e0c11";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs grid-map-core nav2-costmap-2d tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interface for grid maps to the costmap_2d format.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
