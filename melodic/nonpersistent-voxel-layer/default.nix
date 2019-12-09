
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, map-msgs, tf, nav-msgs, sensor-msgs, dynamic-reconfigure, cmake-modules, rosconsole, pcl-ros, message-filters, std-msgs, catkin, costmap-2d, roscpp, voxel-grid, message-generation, laser-geometry, pcl-conversions, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-nonpersistent-voxel-layer";
  version = "1.2.3-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/nonpersistent_voxel_layer-release/archive/release/melodic/nonpersistent_voxel_layer/1.2.3-2.tar.gz";
    name = "1.2.3-2.tar.gz";
    sha256 = "3c8ab56ed99d7856535320eaaedb8670bbf5115258808a22a1b6531ff9308107";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs message-filters geometry-msgs dynamic-reconfigure pluginlib std-msgs map-msgs tf cmake-modules laser-geometry costmap-2d pcl-conversions visualization-msgs roscpp voxel-grid message-generation nav-msgs ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs message-filters geometry-msgs dynamic-reconfigure pluginlib std-msgs map-msgs tf laser-geometry costmap-2d pcl-conversions visualization-msgs roscpp voxel-grid message-runtime nav-msgs rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''include
        This package provides an implementation of a 3D costmap that takes in sensor
        data from the world, builds a 3D occupancy grid of the data for only one iteration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
