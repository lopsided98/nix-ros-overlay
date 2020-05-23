
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, eigen, geometry-msgs, message-filters, nodelet, nodelet-topic-tools, pcl, pcl-conversions, pcl-msgs, pluginlib, rosbag, rosconsole, roscpp, roslib, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pcl-ros";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/noetic/pcl_ros/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "e2fe9b281261b32f4b1be221c37f93bd0cc41a492d6928cf9f549932baa389b2";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules rosconsole roslib ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure eigen geometry-msgs message-filters nodelet nodelet-topic-tools pcl pcl-conversions pcl-msgs pluginlib rosbag roscpp sensor-msgs std-msgs tf tf2 tf2-eigen tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
