
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, map-msgs, tf, rosunit, nav-msgs, rostest, sensor-msgs, dynamic-reconfigure, cmake-modules, rosbag, rosconsole, pcl-ros, message-filters, std-msgs, catkin, roscpp, voxel-grid, message-generation, map-server, laser-geometry, pcl-conversions, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-costmap-2d";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/costmap_2d/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "b8bda9750d1c8117468d802b0a18c598beb46f4b12418d93c052dc05397eb454";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs message-filters geometry-msgs dynamic-reconfigure pluginlib std-msgs map-msgs tf cmake-modules laser-geometry pcl-conversions visualization-msgs roscpp voxel-grid message-generation nav-msgs ];
  checkInputs = [ map-server rosbag rostest rosunit ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs message-filters geometry-msgs dynamic-reconfigure pluginlib std-msgs map-msgs tf laser-geometry pcl-conversions visualization-msgs roscpp voxel-grid message-runtime nav-msgs rosconsole ];
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
