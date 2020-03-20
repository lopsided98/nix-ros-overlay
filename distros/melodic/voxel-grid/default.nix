
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-voxel-grid";
  version = "1.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/voxel_grid/1.16.5-1.tar.gz";
    name = "1.16.5-1.tar.gz";
    sha256 = "6dcf7076c4175966170938ecf8bf1c1650c8ce95d897aa9a9255ea5aa7c354aa";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voxel_grid provides an implementation of an efficient 3D voxel grid. The occupancy grid can support 3 different representations for the state of a cell: marked, free, or unknown. Due to the underlying implementation relying on bitwise and and or integer operations, the voxel grid only supports 16 different levels per voxel column. However, this limitation yields raytracing and cell marking performance in the grid comparable to standard 2D structures making it quite fast compared to most 3D structures.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
