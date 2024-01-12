
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, gtest, pcl-ros }:
buildRosPackage {
  pname = "ros-noetic-grid-map-sdf";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map_sdf/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "bc3afab7b443f041d998cba4dd624b6600f330c153647964c00d63ff70d9c3fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates signed distance fields from grid maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
