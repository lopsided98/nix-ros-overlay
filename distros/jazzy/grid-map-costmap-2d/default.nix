
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, grid-map-cmake-helpers, grid-map-core, nav2-costmap-2d, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-costmap-2d";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_costmap_2d/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "c2f95134708f20d7f552fdc0f97499344149a5f481a4e96500e3ff77e3abac6f";
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
