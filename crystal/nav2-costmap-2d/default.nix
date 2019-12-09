
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, map-msgs, tf2-sensor-msgs, ament-cmake, nav2-dynamic-params, tf2, nav2-util, nav2-msgs, nav-msgs, ament-lint-auto, sensor-msgs, launch-testing, ament-lint-common, nav2-voxel-grid, tf2-geometry-msgs, nav2-map-server, nav2-common, rclcpp, tf2-ros, ament-cmake-gtest, message-filters, std-msgs, pcl, launch, laser-geometry, visualization-msgs, ament-cmake-pytest }:
buildRosPackage {
  pname = "ros-crystal-nav2-costmap-2d";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_costmap_2d/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "d334601046ce22f40bb0abe4f43ec89531f3a21890d4e678e98b4e3289fba330";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs pluginlib map-msgs tf2-sensor-msgs nav2-dynamic-params tf2 nav2-util nav-msgs nav2-msgs sensor-msgs nav2-voxel-grid tf2-geometry-msgs nav2-common rclcpp tf2-ros message-filters std-msgs pcl laser-geometry visualization-msgs ];
  checkInputs = [ launch launch-testing ament-lint-common nav2-map-server ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs pluginlib map-msgs tf2-sensor-msgs nav2-dynamic-params tf2 nav2-util nav-msgs nav2-msgs sensor-msgs nav2-voxel-grid tf2-geometry-msgs rclcpp tf2-ros message-filters std-msgs pcl laser-geometry visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides an implementation of a 2D costmap that takes in sensor
    data from the world, builds a 2D or 3D occupancy grid of the data (depending
    on whether a voxel based implementation is used), and inflates costs in a
    2D costmap based on the occupancy grid and a user specified inflation radius.
    This package also provides support for map_server based initialization of a
    costmap, rolling window based costmaps, and parameter based subscription to
    and configuration of sensor topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
