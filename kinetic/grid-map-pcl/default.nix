
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, catkin, pcl-ros }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-pcl";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_pcl/1.6.1-0.tar.gz;
    sha256 = "4b831fb53f105575293ca195e5131792b38b74a04d7ed3a0d43fa9df168dbd71";
  };

  buildInputs = [ grid-map-core pcl-ros ];
  propagatedBuildInputs = [ grid-map-core pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and Point Cloud Library (PCL) types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
