
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, tf, pcl-conversions, message-filters, pcl-msgs, genmsg, roslib, rosbag, catkin, std-msgs, nodelet, roscpp, eigen, cmake-modules, pluginlib, pcl, sensor-msgs, nodelet-topic-tools, rostest, tf2-eigen, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-pcl-ros";
  version = "1.5.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/perception_pcl-release/archive/release/lunar/pcl_ros/1.5.4-0.tar.gz;
    sha256 = "f7f6bc3a094ecd03e0fa873dd070f7ea77488694c9f92c617a94a27eb671f8e7";
  };

  buildInputs = [ rosconsole rosbag dynamic-reconfigure std-msgs roscpp tf pcl-conversions nodelet eigen cmake-modules pluginlib pcl sensor-msgs nodelet-topic-tools message-filters tf2-eigen pcl-msgs genmsg roslib ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib pcl rosbag nodelet-topic-tools message-filters pcl-msgs roscpp sensor-msgs tf2-eigen dynamic-reconfigure std-msgs nodelet tf pcl-conversions eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    #license = lib.licenses.BSD;
  };
}
