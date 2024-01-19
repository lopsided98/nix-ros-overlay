
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, grid-map-cmake-helpers, grid-map-core, grid-map-costmap-2d, grid-map-cv, grid-map-demos, grid-map-filters, grid-map-loader, grid-map-msgs, grid-map-octomap, grid-map-pcl, grid-map-ros, grid-map-rviz-plugin, grid-map-sdf, grid-map-visualization }:
buildRosPackage {
  pname = "ros-humble-grid-map";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "e6f006a23a8ca2eef5011e1950b1382b6463368a8af71198f96cc695284be3d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ grid-map-cmake-helpers grid-map-core grid-map-costmap-2d grid-map-cv grid-map-demos grid-map-filters grid-map-loader grid-map-msgs grid-map-octomap grid-map-pcl grid-map-ros grid-map-rviz-plugin grid-map-sdf grid-map-visualization ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package for the universal grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
