
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, tf, pcl-conversions, message-filters, pcl-msgs, genmsg, roslib, rosbag, catkin, std-msgs, roscpp, nodelet, eigen, cmake-modules, pluginlib, pcl, sensor-msgs, nodelet-topic-tools, rostest, tf2-eigen, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-pcl-ros";
  version = "1.4.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/perception_pcl-release/archive/release/kinetic/pcl_ros/1.4.4-0.tar.gz;
    sha256 = "614de7441e08a0f488729eea2dbb47b0a249f0ad803b5fc550a795a9b3060578";
  };

  buildInputs = [ rosconsole tf pcl-conversions message-filters pcl-msgs genmsg roslib rosbag std-msgs roscpp nodelet eigen cmake-modules pluginlib pcl sensor-msgs nodelet-topic-tools tf2-eigen dynamic-reconfigure ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib pcl rosbag nodelet-topic-tools message-filters pcl-msgs roscpp sensor-msgs tf2-eigen dynamic-reconfigure std-msgs nodelet tf pcl-conversions eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
