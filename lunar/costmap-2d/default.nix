
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, pcl-ros, tf, pcl-conversions, geometry-msgs, map-server, message-filters, voxel-grid, message-generation, message-runtime, rosbag, catkin, nav-msgs, std-msgs, roscpp, laser-geometry, visualization-msgs, cmake-modules, pluginlib, pcl, sensor-msgs, rostest, dynamic-reconfigure, rosunit, map-msgs }:
buildRosPackage {
  pname = "ros-lunar-costmap-2d";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/costmap_2d/1.15.2-0.tar.gz;
    sha256 = "34054c1f6e347e5529d109750290c18ec9ad92245c6dbc6bc31a929d59c50acb";
  };

  buildInputs = [ nav-msgs pcl-ros std-msgs roscpp laser-geometry visualization-msgs tf pcl-conversions geometry-msgs cmake-modules pluginlib pcl sensor-msgs message-filters rostest voxel-grid message-generation dynamic-reconfigure map-msgs ];
  checkInputs = [ rostest rosbag rosunit map-server ];
  propagatedBuildInputs = [ rosconsole nav-msgs pcl-ros std-msgs roscpp laser-geometry visualization-msgs tf pcl-conversions geometry-msgs pluginlib pcl sensor-msgs message-filters rostest voxel-grid message-runtime dynamic-reconfigure map-msgs ];
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
