
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen, geometry-msgs, message-filters, nodelet, nodelet-topic-tools, pcl, pcl-conversions, pcl-msgs, pluginlib, rosbag, rosconsole, roscpp, roslib, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-pcl-ros";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/pcl_ros/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "81c8f34db4e676394e91982470aaf3e88b0e23f955a4f5b49efbddbe812dada8";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosconsole roslib ];
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
