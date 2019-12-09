
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, map-msgs, tf2-sensor-msgs, rosunit, tf2, nav-msgs, rostest, sensor-msgs, dynamic-reconfigure, cmake-modules, tf2-geometry-msgs, rosbag, rosconsole, tf2-ros, message-filters, std-msgs, catkin, roscpp, voxel-grid, message-generation, map-server, laser-geometry, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-costmap-2d";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/costmap_2d/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "a857afa9b0c752f7e572e793037ad2753a8f5c2f57625b6ad10ef51e421ceba5";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib map-msgs tf2-sensor-msgs tf2 nav-msgs rostest sensor-msgs dynamic-reconfigure cmake-modules tf2-geometry-msgs tf2-ros message-filters std-msgs roscpp voxel-grid message-generation laser-geometry visualization-msgs ];
  checkInputs = [ map-server rosbag rostest rosunit ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs dynamic-reconfigure pluginlib std-msgs map-msgs laser-geometry roscpp rosconsole visualization-msgs tf2 voxel-grid message-runtime nav-msgs rostest tf2-ros ];
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
