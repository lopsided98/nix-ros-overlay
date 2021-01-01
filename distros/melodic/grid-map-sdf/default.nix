
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, pcl-ros }:
buildRosPackage {
  pname = "ros-melodic-grid-map-sdf";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_sdf/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "2ba1a46be320ddf71fc6054c315faee0f1aed95608e024e90d0abce7975c602c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates signed distance fields from grid maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
