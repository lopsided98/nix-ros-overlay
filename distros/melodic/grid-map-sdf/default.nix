
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, gtest, pcl-ros }:
buildRosPackage {
  pname = "ros-melodic-grid-map-sdf";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_sdf/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "52a6c54cbfc51b951f761c5e79711bdd9fe1229545c3d0eb0270a719700a011a";
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
