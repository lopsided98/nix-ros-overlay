
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, map-msgs, tf2-sensor-msgs, ament-cmake, tf2, nav2-util, nav2-msgs, nav-msgs, ament-lint-auto, rclcpp-lifecycle, sensor-msgs, launch-testing, ament-lint-common, nav2-voxel-grid, tf2-geometry-msgs, nav2-map-server, nav2-common, rclcpp, tf2-ros, ament-cmake-gtest, message-filters, std-msgs, launch, nav2-lifecycle-manager, laser-geometry, visualization-msgs, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-dashing-nav2-costmap-2d";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_costmap_2d/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "387faa441ff7f0c98d091c30508c40084dba15991cd1bd5165005d38932afea7";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs pluginlib map-msgs tf2-sensor-msgs tf2 nav2-util nav-msgs nav2-msgs rclcpp-lifecycle sensor-msgs nav2-voxel-grid tf2-geometry-msgs nav2-common rclcpp tf2-ros message-filters std-msgs laser-geometry visualization-msgs ];
  checkInputs = [ launch launch-testing nav2-lifecycle-manager ament-lint-common nav2-map-server ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs nav-msgs rclcpp-lifecycle pluginlib std-msgs map-msgs tf2-sensor-msgs laser-geometry nav2-voxel-grid tf2-geometry-msgs visualization-msgs tf2 nav2-util rclcpp nav2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides an implementation of a 2D costmap that takes in sensor
    data from the world, builds a 2D or 3D occupancy grid of the data (depending
    on whether a voxel based implementation is used), and inflates costs in a
    2D costmap based on the occupancy grid and a user specified inflation radius.
    This package also provides support for map_server based initialization of a
    costmap, rolling window based costmaps, and parameter based subscription to
    and configuration of sensor topics.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
