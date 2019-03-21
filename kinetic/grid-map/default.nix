
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-rviz-plugin, grid-map-core, grid-map-visualization, grid-map-demos, catkin, grid-map-filters, grid-map-ros, grid-map-msgs, grid-map-loader, grid-map-cv }:
buildRosPackage {
  pname = "ros-kinetic-grid-map";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map/1.6.1-0.tar.gz;
    sha256 = "4aa4624730521ecfd83a989ab120499a153d840604dce8b992f29692c290ff64";
  };

  propagatedBuildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization grid-map-filters grid-map-cv grid-map-ros grid-map-msgs grid-map-loader grid-map-demos ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal grid map library.'';
    #license = lib.licenses.BSD;
  };
}
