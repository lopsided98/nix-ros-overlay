
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, grid-map-cmake-helpers, grid-map-core, nav2-costmap-2d, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-costmap-2d";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_costmap_2d/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "2dab2df28a6c0242520981d411836aa1f769b8f1588bbf68223b5b1d2625edb4";
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
