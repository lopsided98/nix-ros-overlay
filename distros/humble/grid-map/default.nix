
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, grid-map-cmake-helpers, grid-map-core, grid-map-costmap-2d, grid-map-cv, grid-map-demos, grid-map-filters, grid-map-loader, grid-map-msgs, grid-map-octomap, grid-map-pcl, grid-map-ros, grid-map-rviz-plugin, grid-map-sdf, grid-map-visualization }:
buildRosPackage {
  pname = "ros-humble-grid-map";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "4ee7b2de39d4a10a27f7f5235895769f443408b87abbd46426024f7b7df98fab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ grid-map-cmake-helpers grid-map-core grid-map-costmap-2d grid-map-cv grid-map-demos grid-map-filters grid-map-loader grid-map-msgs grid-map-octomap grid-map-pcl grid-map-ros grid-map-rviz-plugin grid-map-sdf grid-map-visualization ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta-package for the universal grid map library.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
