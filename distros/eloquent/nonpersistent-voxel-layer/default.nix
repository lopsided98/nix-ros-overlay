
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, geometry-msgs, laser-geometry, map-msgs, nav-msgs, nav2-costmap-2d, nav2-msgs, nav2-voxel-grid, pcl, pcl-conversions, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-eloquent-nonpersistent-voxel-layer";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/nonpersistent_voxel_layer-release/archive/release/eloquent/nonpersistent_voxel_layer/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "35298293b1514e3e4365905f951ccffb4fe63bd0c5d879c6a8b26d0596d34f0a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs laser-geometry map-msgs nav-msgs nav2-costmap-2d nav2-msgs nav2-voxel-grid pcl pcl-conversions pluginlib rclcpp sensor-msgs std-msgs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''include
        This package provides an implementation of a 3D costmap that takes in sensor
        data from the world, builds a 3D occupancy grid of the data for only one iteration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
