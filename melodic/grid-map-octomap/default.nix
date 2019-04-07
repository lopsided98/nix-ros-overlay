
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, catkin, octomap }:
buildRosPackage {
  pname = "ros-melodic-grid-map-octomap";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_octomap/1.6.1-0.tar.gz;
    sha256 = "b21ce231c7f9c9bb20d94c48d608be6b1e0d640067542de8570227eef05cd520";
  };

  buildInputs = [ grid-map-core octomap ];
  propagatedBuildInputs = [ grid-map-core octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OctoMap types.'';
    #license = lib.licenses.BSD;
  };
}
