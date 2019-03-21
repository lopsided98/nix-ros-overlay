
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, catkin, pcl-ros }:
buildRosPackage {
  pname = "ros-melodic-grid-map-sdf";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_sdf/1.6.1-0.tar.gz;
    sha256 = "797729e8328b77ffa6a57b4ac35f26a4d101289619cfa3b555d253d20f9bd560";
  };

  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ grid-map-core catkin pcl-ros ];

  meta = {
    description = ''Generates signed distance fields from grid maps.'';
    #license = lib.licenses.BSD;
  };
}
