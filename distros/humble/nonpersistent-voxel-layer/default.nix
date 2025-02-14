
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, geometry-msgs, laser-geometry, map-msgs, nav-msgs, nav2-costmap-2d, nav2-msgs, nav2-voxel-grid, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-nonpersistent-voxel-layer";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/nonpersistent_voxel_layer-release/archive/release/humble/nonpersistent_voxel_layer/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "c6d2dfd4fdabc1a67721fae0e0e5c9946599823e73765665077e62afc84eef71";
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
