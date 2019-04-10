
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, filters, catkin, grid-map-ros, grid-map-msgs }:
buildRosPackage {
  pname = "ros-lunar-grid-map-filters";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_filters/1.6.1-0.tar.gz;
    sha256 = "b1e45d7f1701d1ba0f70adaf7863a7e2a43feda18d6bcaf2b8f201916b251cca";
  };

  buildInputs = [ grid-map-core grid-map-msgs grid-map-ros filters ];
  propagatedBuildInputs = [ grid-map-core grid-map-msgs grid-map-ros filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processing grid maps as a sequence of ROS filters.'';
    #license = lib.licenses.BSD;
  };
}
