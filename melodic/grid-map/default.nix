
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-rviz-plugin, grid-map-core, grid-map-visualization, grid-map-demos, catkin, grid-map-filters, grid-map-ros, grid-map-msgs, grid-map-loader, grid-map-cv }:
buildRosPackage {
  pname = "ros-melodic-grid-map";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "e5d635fb7cda75a2d873d37d108fac9e1bd382ad552426cafd70bbe2222b7fc3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-rviz-plugin grid-map-core grid-map-visualization grid-map-filters grid-map-cv grid-map-ros grid-map-msgs grid-map-loader grid-map-demos ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal grid map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
