
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, compressed-depth-image-transport, compressed-image-transport, costmap-2d, cv-bridge, dynamic-reconfigure, eigen-conversions, find-object-2d, genmsg, geometry-msgs, image-geometry, image-transport, laser-geometry, message-filters, message-generation, message-runtime, move-base-msgs, nav-msgs, nodelet, octomap-msgs, pcl, pcl-conversions, pcl-ros, pluginlib, roscpp, rosgraph-msgs, rospy, rtabmap, rviz, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf, tf-conversions, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtabmap-ros";
  version = "0.20.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kinetic/rtabmap_ros/0.20.7-1.tar.gz";
    name = "0.20.7-1.tar.gz";
    sha256 = "e7feb83f9e9b6a0fb96539f5396732f0cf83dd702842c97d26409fbccfb61217";
  };

  buildType = "catkin";
  buildInputs = [ message-generation pcl ];
  propagatedBuildInputs = [ class-loader compressed-depth-image-transport compressed-image-transport costmap-2d cv-bridge dynamic-reconfigure eigen-conversions find-object-2d geometry-msgs image-geometry image-transport laser-geometry message-filters message-runtime move-base-msgs nav-msgs nodelet octomap-msgs pcl-conversions pcl-ros pluginlib roscpp rosgraph-msgs rospy rtabmap rviz sensor-msgs std-msgs std-srvs stereo-msgs tf tf-conversions tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin genmsg ];

  meta = {
    description = ''RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
