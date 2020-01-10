
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, grid-map-core, grid-map-msgs, grid-map-ros }:
buildRosPackage {
  pname = "ros-melodic-grid-map-filters";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_filters/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "fbcfe4d877776fa98992e64c6d6dfe8c0095842f46012c21778149eae702ab90";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ filters grid-map-core grid-map-msgs grid-map-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processing grid maps as a sequence of ROS filters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
