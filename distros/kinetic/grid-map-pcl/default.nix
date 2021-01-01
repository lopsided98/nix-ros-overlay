
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, pcl-ros }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-pcl";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_pcl/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "5df44de3ea0df1daf65378bb43fea5d2345d63c6a13382ce83e8c6267022e007";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and Point Cloud Library (PCL) types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
