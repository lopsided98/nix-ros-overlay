
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-voxel-grid, nav2-common, geometry-msgs, nav2-map-server, ament-cmake-pytest, ament-cmake-gtest, launch, message-filters, nav2-util, tf2-sensor-msgs, rclcpp, nav2-dynamic-params, tf2-geometry-msgs, tf2-ros, nav-msgs, std-msgs, laser-geometry, visualization-msgs, pluginlib, ament-lint-common, pcl, sensor-msgs, nav2-msgs, launch-testing, tf2, ament-lint-auto, map-msgs }:
buildRosPackage {
  pname = "ros-crystal-nav2-costmap-2d";
  version = "0.1.7";

  src = fetchurl {
    url = https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_costmap_2d/0.1.7-0.tar.gz;
    sha256 = "d334601046ce22f40bb0abe4f43ec89531f3a21890d4e678e98b4e3289fba330";
  };

  buildInputs = [ nav2-voxel-grid nav2-common geometry-msgs message-filters nav2-util tf2-sensor-msgs rclcpp nav2-dynamic-params tf2-geometry-msgs tf2-ros nav-msgs std-msgs visualization-msgs laser-geometry pluginlib pcl sensor-msgs nav2-msgs tf2 map-msgs ];
  checkInputs = [ nav2-map-server ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-voxel-grid geometry-msgs message-filters nav2-util tf2-sensor-msgs rclcpp nav2-dynamic-params tf2-geometry-msgs tf2-ros nav-msgs std-msgs visualization-msgs laser-geometry pluginlib pcl sensor-msgs nav2-msgs tf2 map-msgs ];
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
