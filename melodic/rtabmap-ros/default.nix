
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, eigen-conversions, tf, image-transport, nodelet, class-loader, rtabmap, nav-msgs, sensor-msgs, dynamic-reconfigure, message-runtime, compressed-depth-image-transport, tf2-ros, move-base-msgs, pcl-ros, message-filters, std-msgs, std-srvs, catkin, pcl, costmap-2d, cv-bridge, roscpp, message-generation, rospy, rosgraph-msgs, image-geometry, find-object-2d, genmsg, octomap-msgs, laser-geometry, stereo-msgs, rviz, pcl-conversions, visualization-msgs, compressed-image-transport, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-rtabmap-ros";
  version = "0.19.3-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/melodic/rtabmap_ros/0.19.3-1.tar.gz";
    name = "0.19.3-1.tar.gz";
    sha256 = "5d5099589b46f8aec805e0f7b194b7d6a87960778034d3893347e0ec3b078ef8";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs eigen-conversions tf image-transport nodelet class-loader rtabmap nav-msgs sensor-msgs dynamic-reconfigure tf2-ros move-base-msgs pcl-ros message-filters std-msgs std-srvs pcl costmap-2d cv-bridge roscpp message-generation rospy rosgraph-msgs image-geometry find-object-2d octomap-msgs laser-geometry stereo-msgs rviz pcl-conversions visualization-msgs tf-conversions ];
  propagatedBuildInputs = [ geometry-msgs eigen-conversions tf image-transport nodelet class-loader rtabmap nav-msgs sensor-msgs dynamic-reconfigure message-runtime compressed-depth-image-transport tf2-ros move-base-msgs pcl-ros message-filters std-msgs std-srvs costmap-2d cv-bridge roscpp rospy rosgraph-msgs image-geometry find-object-2d octomap-msgs laser-geometry stereo-msgs rviz pcl-conversions visualization-msgs compressed-image-transport tf-conversions ];
  nativeBuildInputs = [ genmsg catkin ];

  meta = {
    description = ''RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
