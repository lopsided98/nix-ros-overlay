
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, filters, catkin, grid-map-ros, grid-map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-filters";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_filters/1.6.1-0.tar.gz;
    sha256 = "3a337f3e0228b306be739f72ab9d1935269b21a29d982268adbe96eb9202c896";
  };

  propagatedBuildInputs = [ grid-map-core grid-map-msgs grid-map-ros filters ];
  nativeBuildInputs = [ grid-map-core filters grid-map-ros grid-map-msgs catkin ];

  meta = {
    description = ''Processing grid maps as a sequence of ROS filters.'';
    #license = lib.licenses.BSD;
  };
}
