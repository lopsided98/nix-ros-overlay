
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-rviz-plugin, grid-map-core, grid-map-visualization, grid-map-demos, catkin, grid-map-filters, grid-map-ros, grid-map-msgs, grid-map-loader, grid-map-cv }:
buildRosPackage {
  pname = "ros-lunar-grid-map";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map/1.6.1-0.tar.gz;
    sha256 = "d40713265f2601a9a0ac2c1a14e8d15178adfda79a811264ac8ed6ae2429cba4";
  };

  propagatedBuildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization grid-map-filters grid-map-cv grid-map-ros grid-map-msgs grid-map-loader grid-map-demos ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal grid map library.'';
    #license = lib.licenses.BSD;
  };
}
