
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, geometry-msgs, laser-geometry, launch, launch-testing, map-msgs, message-filters, nav-msgs, nav2-common, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-util, nav2-voxel-grid, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-nav2-costmap-2d";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_costmap_2d/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "1cd3d82231905e83acd27a2b7aeb745b143c0608eb048ee62a4b91fc7f43c304";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch launch-testing nav2-lifecycle-manager nav2-map-server ];
  propagatedBuildInputs = [ angles geometry-msgs laser-geometry map-msgs message-filters nav-msgs nav2-msgs nav2-util nav2-voxel-grid pluginlib rclcpp rclcpp-lifecycle sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides an implementation of a 2D costmap that takes in sensor
    data from the world, builds a 2D or 3D occupancy grid of the data (depending
    on whether a voxel based implementation is used), and inflates costs in a
    2D costmap based on the occupancy grid and a user specified inflation radius.
    This package also provides support for map_server based initialization of a
    costmap, rolling window based costmaps, and parameter based subscription to
    and configuration of sensor topics.'';
    license = with lib.licenses; [ bsd3 asl20 ];
  };
}
