
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, pcl-ros, tf, pcl-conversions, geometry-msgs, message-filters, voxel-grid, message-generation, message-runtime, catkin, nav-msgs, std-msgs, laser-geometry, visualization-msgs, roscpp, costmap-2d, pluginlib, cmake-modules, sensor-msgs, dynamic-reconfigure, map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nonpersistent-voxel-layer";
  version = "1.1.3";

  src = fetchurl {
    url = https://github.com/SteveMacenski/nonpersistent_voxel_layer-release/archive/release/kinetic/nonpersistent_voxel_layer/1.1.3-0.tar.gz;
    sha256 = "8d8ded6c9745f78888e621e74090f34bd6f919d7d209a441c4fc170ccf2d2d0c";
  };

  buildInputs = [ costmap-2d pluginlib cmake-modules sensor-msgs message-filters roscpp voxel-grid message-generation nav-msgs laser-geometry visualization-msgs pcl-ros std-msgs dynamic-reconfigure tf pcl-conversions geometry-msgs map-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib rosconsole sensor-msgs message-filters roscpp voxel-grid nav-msgs laser-geometry message-runtime visualization-msgs pcl-ros std-msgs dynamic-reconfigure tf pcl-conversions geometry-msgs map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''include
        This package provides an implementation of a 3D costmap that takes in sensor
        data from the world, builds a 3D occupancy grid of the data for only one iteration.'';
    #license = lib.licenses.BSD;
  };
}
