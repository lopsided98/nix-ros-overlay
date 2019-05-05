
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, catkin, pcl-ros }:
buildRosPackage {
  pname = "ros-lunar-grid-map-sdf";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_sdf/1.6.1-0.tar.gz;
    sha256 = "deccb9f86363cd7e0215057464db90272bde84af710e6fcc63e32dc2226399c4";
  };

  buildInputs = [ grid-map-core pcl-ros ];
  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates signed distance fields from grid maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
