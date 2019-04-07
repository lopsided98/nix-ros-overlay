
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, grid-map-msgs, catkin, grid-map-ros }:
buildRosPackage {
  pname = "ros-melodic-grid-map-loader";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_loader/1.6.1-0.tar.gz;
    sha256 = "933535f2c73fb43bc6502d724b03e684683ccdc476dce5b3b602ed7a4a0e60d1";
  };

  buildInputs = [ grid-map-msgs roscpp grid-map-ros ];
  propagatedBuildInputs = [ grid-map-msgs roscpp grid-map-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Loading and publishing grid maps from bag files.'';
    #license = lib.licenses.BSD;
  };
}
