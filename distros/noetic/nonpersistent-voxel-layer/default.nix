
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, dynamic-reconfigure, geometry-msgs, laser-geometry, map-msgs, message-filters, message-generation, message-runtime, nav-msgs, pluginlib, rosconsole, roscpp, sensor-msgs, std-msgs, tf, visualization-msgs, voxel-grid }:
buildRosPackage {
  pname = "ros-noetic-nonpersistent-voxel-layer";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/nonpersistent_voxel_layer-release/archive/release/noetic/nonpersistent_voxel_layer/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "873ea35875641ee32e4bfd53dd41ff0425e742cc6dcb75309e9094caa8b37c37";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs laser-geometry map-msgs message-filters message-runtime nav-msgs pluginlib rosconsole roscpp sensor-msgs std-msgs tf visualization-msgs voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''include
        This package provides an implementation of a 3D costmap that takes in sensor
        data from the world, builds a 3D occupancy grid of the data for only one iteration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
