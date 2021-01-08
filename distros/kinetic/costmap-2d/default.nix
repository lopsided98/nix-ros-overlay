
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, geometry-msgs, laser-geometry, map-msgs, map-server, message-filters, message-generation, message-runtime, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rosbag, rosconsole, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf, visualization-msgs, voxel-grid }:
buildRosPackage {
  pname = "ros-kinetic-costmap-2d";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/costmap_2d/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "215b47f7d43cf8ffae1475cb31316d1fced1e06fa754909a831e50ebe321f4a0";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  checkInputs = [ map-server rosbag rostest rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs laser-geometry map-msgs message-filters message-runtime nav-msgs pcl-conversions pcl-ros pluginlib rosconsole roscpp sensor-msgs std-msgs tf visualization-msgs voxel-grid ];
  nativeBuildInputs = [ catkin ];

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
