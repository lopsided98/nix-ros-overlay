
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, roscpp }:
buildRosPackage {
  pname = "ros-lunar-voxel-grid";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/voxel_grid/1.15.2-0.tar.gz;
    sha256 = "13f9c581a7e09ac8b13b63a9b4636fd07b60e9eb37ce1959b31b6b15c2090531";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''voxel_grid provides an implementation of an efficient 3D voxel grid. The occupancy grid can support 3 different representations for the state of a cell: marked, free, or unknown. Due to the underlying implementation relying on bitwise and and or integer operations, the voxel grid only supports 16 different levels per voxel column. However, this limitation yields raytracing and cell marking performance in the grid comparable to standard 2D structures making it quite fast compared to most 3D structures.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
