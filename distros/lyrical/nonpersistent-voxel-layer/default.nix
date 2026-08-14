
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, laser-geometry, nav2-costmap-2d, nav2-msgs, nav2-voxel-grid, pluginlib, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nonpersistent-voxel-layer";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/nonpersistent_voxel_layer-release/archive/release/lyrical/nonpersistent_voxel_layer/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "923238b7ac1b45fd1b3ed5ed3d5b5a1d3da4aeaf819dd31d7495a97d0a011f71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ laser-geometry nav2-costmap-2d nav2-msgs nav2-voxel-grid pluginlib rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "include
        This package provides an implementation of a 3D costmap that takes in sensor
        data from the world, builds a 3D occupancy grid of the data for only one iteration.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
