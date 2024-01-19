
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, grid-map-cmake-helpers, grid-map-core, nav2-costmap-2d, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-grid-map-costmap-2d";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map_costmap_2d/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "f50942c89f88c00c1c7b23b832ac682fee617579b9ba6353c160fdb487ce25c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs grid-map-core nav2-costmap-2d tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface for grid maps to the costmap_2d format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
