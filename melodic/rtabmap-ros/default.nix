
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

  buildInputs = [ std-srvs rtabmap class-loader cv-bridge tf2-ros image-geometry octomap-msgs move-base-msgs nav-msgs pcl-ros std-msgs tf-conversions rospy laser-geometry tf pcl-conversions find-object-2d stereo-msgs roscpp costmap-2d nodelet visualization-msgs geometry-msgs pcl sensor-msgs image-transport message-filters message-generation rviz dynamic-reconfigure eigen-conversions ];
  propagatedBuildInputs = [ std-srvs rtabmap class-loader cv-bridge tf2-ros image-geometry octomap-msgs move-base-msgs nav-msgs pcl-ros std-msgs tf-conversions rospy laser-geometry compressed-image-transport tf pcl-conversions find-object-2d stereo-msgs costmap-2d roscpp nodelet visualization-msgs geometry-msgs image-transport sensor-msgs message-filters rviz message-runtime dynamic-reconfigure compressed-depth-image-transport eigen-conversions ];
  nativeBuildInputs = [ genmsg catkin ];

  meta = {
    description = ''RTAB-Map's ros-pkg. RTAB-Map is a RGB-D SLAM approach with real-time constraints.'';
    #license = lib.licenses.BSD;
  };
}
