
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, catkin, pcl-ros }:
buildRosPackage {
  pname = "ros-melodic-grid-map-pcl";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_pcl/1.6.1-0.tar.gz;
    sha256 = "cd37b6d275b0d1afa0755a76162c63914f46c02465318338481db82341e0fba9";
  };

  buildInputs = [ grid-map-core pcl-ros ];
  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and Point Cloud Library (PCL) types.'';
    #license = lib.licenses.BSD;
  };
}
