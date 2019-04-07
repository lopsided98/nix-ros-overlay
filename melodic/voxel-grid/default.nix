
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, roscpp }:
buildRosPackage {
  pname = "ros-melodic-voxel-grid";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/voxel_grid/1.16.2-0.tar.gz;
    sha256 = "8102b9aae0f9856c35f38841945094d77eec895fea6d8caaac479cfa162a56d4";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voxel_grid provides an implementation of an efficient 3D voxel grid. The occupancy grid can support 3 different representations for the state of a cell: marked, free, or unknown. Due to the underlying implementation relying on bitwise and and or integer operations, the voxel grid only supports 16 different levels per voxel column. However, this limitation yields raytracing and cell marking performance in the grid comparable to standard 2D structures making it quite fast compared to most 3D structures.'';
    #license = lib.licenses.BSD;
  };
}
