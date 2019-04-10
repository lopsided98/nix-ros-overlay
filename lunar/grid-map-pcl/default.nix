
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, catkin, pcl-ros }:
buildRosPackage {
  pname = "ros-lunar-grid-map-pcl";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/lunar/grid_map_pcl/1.6.1-0.tar.gz;
    sha256 = "ff52f972ce1cd863139ea300af0f857662b489b7ea980983392ca1f77922c51c";
  };

  buildInputs = [ grid-map-core pcl-ros ];
  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and Point Cloud Library (PCL) types.'';
    #license = lib.licenses.BSD;
  };
}
