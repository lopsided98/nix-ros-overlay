
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, tf, eigen, nodelet, rostest, sensor-msgs, dynamic-reconfigure, cmake-modules, roslib, rosbag, rosconsole, nodelet-topic-tools, message-filters, std-msgs, catkin, pcl, roscpp, genmsg, pcl-msgs, tf2-eigen, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-pcl-ros";
  version = "1.4.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/kinetic/pcl_ros/1.4.4-0.tar.gz";
    name = "1.4.4-0.tar.gz";
    sha256 = "614de7441e08a0f488729eea2dbb47b0a249f0ad803b5fc550a795a9b3060578";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib tf eigen nodelet sensor-msgs dynamic-reconfigure cmake-modules roslib rosbag rosconsole message-filters nodelet-topic-tools std-msgs pcl roscpp genmsg pcl-msgs tf2-eigen pcl-conversions ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ sensor-msgs nodelet-topic-tools message-filters dynamic-reconfigure pluginlib std-msgs tf pcl-msgs pcl tf2-eigen eigen pcl-conversions nodelet roscpp rosbag ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
