
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, octomap }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-octomap";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_octomap/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "3c8a8e8de0a202f2f76df1fc856e3c11b886a6100d32b58f418814be06f745a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-core octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OctoMap types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
