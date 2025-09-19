
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, grid-map-cmake-helpers, grid-map-core, grid-map-costmap-2d, grid-map-cv, grid-map-demos, grid-map-filters, grid-map-loader, grid-map-msgs, grid-map-octomap, grid-map-pcl, grid-map-ros, grid-map-rviz-plugin, grid-map-sdf, grid-map-visualization }:
buildRosPackage {
  pname = "ros-kilted-grid-map";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/kilted/grid_map/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "ac6dbb196ae12ad560635305aa2f3f3ecbdbc9e3c99f03c7c0949e6b1bff30b9";
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
