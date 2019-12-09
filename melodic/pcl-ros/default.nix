
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, tf, eigen, nodelet, tf2, rostest, sensor-msgs, dynamic-reconfigure, cmake-modules, roslib, rosbag, rosconsole, tf2-ros, nodelet-topic-tools, message-filters, std-msgs, catkin, pcl, roscpp, pcl-msgs, tf2-eigen, pcl-conversions }:
buildRosPackage {
  pname = "ros-melodic-pcl-ros";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/pcl_ros/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "ada9b2af2498d10817c956af471f2c36e6cb1a088a5daeb74188746b7177acd6";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib tf eigen nodelet tf2 sensor-msgs dynamic-reconfigure cmake-modules roslib rosbag rosconsole tf2-ros message-filters nodelet-topic-tools std-msgs pcl roscpp pcl-msgs tf2-eigen pcl-conversions ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ sensor-msgs nodelet-topic-tools geometry-msgs message-filters dynamic-reconfigure pluginlib std-msgs tf pcl-msgs roscpp pcl tf2-eigen eigen pcl-conversions nodelet tf2 rosbag tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
