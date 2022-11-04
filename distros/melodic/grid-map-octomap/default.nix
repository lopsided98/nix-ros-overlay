
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, gtest, octomap }:
buildRosPackage {
  pname = "ros-melodic-grid-map-octomap";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_octomap/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "6572bfb578b59433cf8a62c2f43c5dc9d2c378c23fd8ed93d2a3f94c30042676";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ grid-map-core octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OctoMap types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
