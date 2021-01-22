
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, dynamic-reconfigure, geometry-msgs, laser-geometry, map-msgs, message-filters, message-generation, message-runtime, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rosconsole, roscpp, sensor-msgs, std-msgs, tf, visualization-msgs, voxel-grid }:
buildRosPackage {
  pname = "ros-noetic-nonpersistent-voxel-layer";
  version = "1.2.3-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/nonpersistent_voxel_layer-release/archive/release/noetic/nonpersistent_voxel_layer/1.2.3-2.tar.gz";
    name = "1.2.3-2.tar.gz";
    sha256 = "1fb02c102340c981395ffb126313d7ebf1045b583153884c6d80991b30da82ad";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs laser-geometry map-msgs message-filters message-runtime nav-msgs pcl-conversions pcl-ros pluginlib rosconsole roscpp sensor-msgs std-msgs tf visualization-msgs voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''include
        This package provides an implementation of a 3D costmap that takes in sensor
        data from the world, builds a 3D occupancy grid of the data for only one iteration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
