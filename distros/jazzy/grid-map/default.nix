
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, grid-map-cmake-helpers, grid-map-core, grid-map-costmap-2d, grid-map-cv, grid-map-demos, grid-map-filters, grid-map-loader, grid-map-msgs, grid-map-octomap, grid-map-pcl, grid-map-ros, grid-map-rviz-plugin, grid-map-sdf, grid-map-visualization }:
buildRosPackage {
  pname = "ros-jazzy-grid-map";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "1c4c2a946c6eb1f3fc8a64f69efb5b13ac72fccdb29a53f3fafc554596712125";
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
