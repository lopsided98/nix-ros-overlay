
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, pcl-ros, tf, pcl-conversions, geometry-msgs, map-server, message-filters, voxel-grid, message-generation, message-runtime, rosbag, catkin, nav-msgs, std-msgs, roscpp, laser-geometry, visualization-msgs, pluginlib, cmake-modules, sensor-msgs, rostest, dynamic-reconfigure, rosunit, map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-costmap-2d";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/costmap_2d/1.14.4-0.tar.gz;
    sha256 = "4e594e53eb985a25f1a05a6671eb52d535d06e7bc6c6d72c6009f579a7ea8544";
  };

  buildInputs = [ pluginlib cmake-modules sensor-msgs message-filters roscpp voxel-grid message-generation nav-msgs laser-geometry visualization-msgs pcl-ros std-msgs dynamic-reconfigure tf pcl-conversions geometry-msgs map-msgs ];
  checkInputs = [ rostest rosbag rosunit map-server ];
  propagatedBuildInputs = [ pluginlib rosconsole sensor-msgs message-filters roscpp voxel-grid nav-msgs laser-geometry message-runtime visualization-msgs pcl-ros std-msgs dynamic-reconfigure tf pcl-conversions geometry-msgs map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an implementation of a 2D costmap that takes in sensor
        data from the world, builds a 2D or 3D occupancy grid of the data (depending
        on whether a voxel based implementation is used), and inflates costs in a
        2D costmap based on the occupancy grid and a user specified inflation radius.
        This package also provides support for map_server based initialization of a
        costmap, rolling window based costmaps, and parameter based subscription to
        and configuration of sensor topics.'';
    #license = lib.licenses.BSD;
  };
}
