
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-voxel-grid, nav2-common, nav2-lifecycle-manager, geometry-msgs, nav2-map-server, ament-cmake-pytest, ament-cmake-gtest, launch, message-filters, nav2-util, tf2-sensor-msgs, rclcpp, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros, nav-msgs, std-msgs, laser-geometry, visualization-msgs, pluginlib, ament-lint-common, launch-testing, sensor-msgs, nav2-msgs, tf2, ament-lint-auto, map-msgs }:
buildRosPackage {
  pname = "ros-dashing-nav2-costmap-2d";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_costmap_2d/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "387faa441ff7f0c98d091c30508c40084dba15991cd1bd5165005d38932afea7";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-voxel-grid nav2-common geometry-msgs message-filters nav2-util tf2-sensor-msgs rclcpp rclcpp-lifecycle tf2-geometry-msgs tf2-ros nav-msgs std-msgs visualization-msgs laser-geometry pluginlib sensor-msgs nav2-msgs tf2 map-msgs ];
  checkInputs = [ nav2-map-server ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch nav2-lifecycle-manager ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp-lifecycle tf2-geometry-msgs pluginlib nav2-voxel-grid sensor-msgs nav2-msgs message-filters nav2-util tf2-ros tf2-sensor-msgs tf2 nav-msgs rclcpp visualization-msgs std-msgs laser-geometry geometry-msgs map-msgs ];
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
