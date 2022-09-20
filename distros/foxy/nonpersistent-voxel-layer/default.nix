
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, geometry-msgs, laser-geometry, map-msgs, nav-msgs, nav2-costmap-2d, nav2-msgs, nav2-voxel-grid, pcl, pcl-conversions, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-foxy-nonpersistent-voxel-layer";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/nonpersistent_voxel_layer-release/archive/release/foxy/nonpersistent_voxel_layer/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "e189c07f0f785bd3324cd9d28f25acf8a9baec967e79225cdf1a69ed5cd70d93";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
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
