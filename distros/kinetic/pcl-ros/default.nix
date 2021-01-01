
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, eigen, genmsg, message-filters, nodelet, nodelet-topic-tools, pcl, pcl-conversions, pcl-msgs, pluginlib, rosbag, rosconsole, roscpp, roslib, rostest, sensor-msgs, std-msgs, tf, tf2-eigen }:
buildRosPackage {
  pname = "ros-kinetic-pcl-ros";
  version = "1.4.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/kinetic/pcl_ros/1.4.4-0.tar.gz";
    name = "1.4.4-0.tar.gz";
    sha256 = "614de7441e08a0f488729eea2dbb47b0a249f0ad803b5fc550a795a9b3060578";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules genmsg rosconsole roslib ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure eigen message-filters nodelet nodelet-topic-tools pcl pcl-conversions pcl-msgs pluginlib rosbag roscpp sensor-msgs std-msgs tf tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
