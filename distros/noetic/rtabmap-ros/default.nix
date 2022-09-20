
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apriltag-ros, catkin, class-loader, compressed-depth-image-transport, compressed-image-transport, costmap-2d, cv-bridge, dynamic-reconfigure, eigen-conversions, find-object-2d, genmsg, geometry-msgs, image-geometry, image-transport, laser-geometry, message-filters, message-generation, message-runtime, move-base-msgs, nav-msgs, nodelet, octomap-msgs, pcl, pcl-conversions, pcl-ros, pluginlib, roscpp, rosgraph-msgs, rospy, rtabmap, rviz, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf, tf-conversions, tf2-ros, theora-image-transport, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-ros";
  version = "0.20.18-r2";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_ros/0.20.18-2.tar.gz";
    name = "0.20.18-2.tar.gz";
    sha256 = "66e4f201ac8ae13e5202db776a4f53078445b88f806770afa6decdf25914f306";
  };

  buildType = "catkin";
  buildInputs = [ catkin genmsg message-generation pcl ];
  propagatedBuildInputs = [ apriltag-ros class-loader compressed-depth-image-transport compressed-image-transport costmap-2d cv-bridge dynamic-reconfigure eigen-conversions find-object-2d geometry-msgs image-geometry image-transport laser-geometry message-filters message-runtime move-base-msgs nav-msgs nodelet octomap-msgs pcl-conversions pcl-ros pluginlib roscpp rosgraph-msgs rospy rtabmap rviz sensor-msgs std-msgs std-srvs stereo-msgs tf tf-conversions tf2-ros theora-image-transport visualization-msgs ];
  nativeBuildInputs = [ catkin genmsg ];

  meta = {
    description = ''RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
