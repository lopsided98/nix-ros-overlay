
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, octomap }:
buildRosPackage {
  pname = "ros-melodic-grid-map-octomap";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_octomap/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "6f5113c1b3e4459b22a411ac42ad5d476f786bf914783c5b60c2228fb7121048";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-core octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OctoMap types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
