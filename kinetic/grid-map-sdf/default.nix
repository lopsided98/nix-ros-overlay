
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, catkin, pcl-ros }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-sdf";
  version = "1.6.1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_sdf/1.6.1-0.tar.gz";
    name = "1.6.1-0.tar.gz";
    sha256 = "5bbc1756b64c889099d4b53d02bde831a9844474ff65d824ddc67ec52b361a31";
  };

  buildType = "catkin";
  buildInputs = [ grid-map-core pcl-ros ];
  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates signed distance fields from grid maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
