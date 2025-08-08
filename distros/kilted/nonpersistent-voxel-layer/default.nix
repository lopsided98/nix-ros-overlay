
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, geometry-msgs, laser-geometry, map-msgs, nav-msgs, nav2-costmap-2d, nav2-msgs, nav2-voxel-grid, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-nonpersistent-voxel-layer";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/nonpersistent_voxel_layer-release/archive/release/kilted/nonpersistent_voxel_layer/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "76e1434565e933b465c02b61f53f9a7c031e9457a3fefc3e5bcd4337231fcbf6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs laser-geometry map-msgs nav-msgs nav2-costmap-2d nav2-msgs nav2-voxel-grid pluginlib rclcpp sensor-msgs std-msgs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "include
        This package provides an implementation of a 3D costmap that takes in sensor
        data from the world, builds a 3D occupancy grid of the data for only one iteration.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
