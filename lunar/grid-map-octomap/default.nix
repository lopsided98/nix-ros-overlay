
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, catkin, octomap }:
buildRosPackage {
  pname = "ros-lunar-grid-map-octomap";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_octomap/1.6.1-0.tar.gz;
    sha256 = "8b9d5e953694550440ebb4293263b4c7bd9a485e6918cea464f5bc0630cd5ce9";
  };

  buildInputs = [ grid-map-core octomap ];
  propagatedBuildInputs = [ grid-map-core octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OctoMap types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
