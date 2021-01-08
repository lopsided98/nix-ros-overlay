
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, grid-map-core, grid-map-msgs, grid-map-ros }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-filters";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_filters/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "c85b94a5affa9b9b2f2395e291b24f55d8b0b9861e20ff1ae215e722586ea88f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ filters grid-map-core grid-map-msgs grid-map-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processing grid maps as a sequence of ROS filters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
