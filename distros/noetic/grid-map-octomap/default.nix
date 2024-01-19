
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, gtest, octomap }:
buildRosPackage {
  pname = "ros-noetic-grid-map-octomap";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map_octomap/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "ef4c82f71e9df5269c9a953bc59d9f805bc57ad8d7f3601dc721ff5ad79e7f01";
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
