
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, eigen, geometry-msgs, laser-geometry, launch, launch-testing, map-msgs, message-filters, nav-msgs, nav2-common, nav2-lifecycle-manager, nav2-map-server, nav2-msgs, nav2-ros-common, nav2-util, nav2-voxel-grid, pluginlib, point-cloud-transport, point-cloud-transport-plugins, rclcpp, rclcpp-lifecycle, rmw, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav2-costmap-2d";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_costmap_2d/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "ae6b2b85865d3f8964fcf3075eaa9a3e22112bfd545f1262886b5ed294bef78b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen nav2-common ];
  checkInputs = [ ament-cmake-google-benchmark ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common launch launch-testing nav2-lifecycle-manager nav2-map-server ];
  propagatedBuildInputs = [ angles backward-ros geometry-msgs laser-geometry map-msgs message-filters nav-msgs nav2-msgs nav2-ros-common nav2-util nav2-voxel-grid pluginlib point-cloud-transport point-cloud-transport-plugins rclcpp rclcpp-lifecycle rmw sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides an implementation of a 2D costmap that takes in sensor
    data from the world, builds a 2D or 3D occupancy grid of the data (depending
    on whether a voxel based implementation is used), and inflates costs in a
    2D costmap based on the occupancy grid and a user specified inflation radius.
    This package also provides support for map_server based initialization of a
    costmap, rolling window based costmaps, and parameter based subscription to
    and configuration of sensor topics.";
    license = with lib.licenses; [ bsd3 asl20 ];
  };
}
