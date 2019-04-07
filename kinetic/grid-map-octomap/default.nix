
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, catkin, octomap }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-octomap";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_octomap/1.6.1-0.tar.gz;
    sha256 = "6aa26ebcaa7eeca40a0752e6ab291484cf8d8c50f26874de03dfab32d79a5645";
  };

  buildInputs = [ grid-map-core octomap ];
  propagatedBuildInputs = [ grid-map-core octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OctoMap types.'';
    #license = lib.licenses.BSD;
  };
}
