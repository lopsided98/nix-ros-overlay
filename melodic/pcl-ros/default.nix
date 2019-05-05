
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, tf, pcl-conversions, message-filters, pcl-msgs, roslib, rosbag, catkin, std-msgs, nodelet, roscpp, eigen, pluginlib, cmake-modules, pcl, sensor-msgs, nodelet-topic-tools, rostest, tf2-eigen, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-pcl-ros";
  version = "1.6.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/pcl_ros/1.6.2-0.tar.gz;
    sha256 = "deb1b59fcc5f3f9247e9fa90e7f5bde35d22668aa13a9300a4d6d3315552215e";
  };

  buildInputs = [ rosconsole pluginlib cmake-modules pcl rosbag nodelet-topic-tools message-filters pcl-msgs roscpp sensor-msgs roslib tf2-eigen dynamic-reconfigure std-msgs nodelet tf pcl-conversions eigen ];
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
