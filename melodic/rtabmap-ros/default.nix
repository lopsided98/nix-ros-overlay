
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, class-loader, cv-bridge, image-geometry, rospy, pcl-ros, tf-conversions, tf, pcl-conversions, find-object-2d, geometry-msgs, stereo-msgs, image-transport, message-filters, message-generation, rviz, message-runtime, compressed-depth-image-transport, genmsg, eigen-conversions, std-srvs, rtabmap, catkin, tf2-ros, octomap-msgs, move-base-msgs, nav-msgs, std-msgs, laser-geometry, roscpp, nodelet, visualization-msgs, compressed-image-transport, costmap-2d, pcl, sensor-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-rtabmap-ros";
  version = "0.17.6";

  src = fetchurl {
    url = https://github.com/introlab/rtabmap_ros-release/archive/release/melodic/rtabmap_ros/0.17.6-0.tar.gz;
    sha256 = "6fe815c03b7ab3c27db125908e1206c537a46da0ff6266bb0263315833c81c6a";
  };

  buildInputs = [ class-loader cv-bridge image-geometry pcl-ros tf-conversions rospy tf pcl-conversions find-object-2d geometry-msgs stereo-msgs image-transport message-filters message-generation rviz eigen-conversions std-srvs rtabmap tf2-ros octomap-msgs move-base-msgs nav-msgs std-msgs laser-geometry roscpp nodelet visualization-msgs costmap-2d pcl sensor-msgs dynamic-reconfigure ];
  propagatedBuildInputs = [ class-loader cv-bridge image-geometry pcl-ros tf-conversions rospy tf pcl-conversions find-object-2d geometry-msgs stereo-msgs image-transport message-filters rviz message-runtime compressed-depth-image-transport eigen-conversions std-srvs rtabmap tf2-ros octomap-msgs move-base-msgs nav-msgs std-msgs laser-geometry compressed-image-transport roscpp nodelet visualization-msgs costmap-2d sensor-msgs dynamic-reconfigure ];
  nativeBuildInputs = [ genmsg catkin ];

  meta = {
    description = ''RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
