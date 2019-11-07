
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, tf, pcl-conversions, geometry-msgs, message-filters, pcl-msgs, roslib, rosbag, catkin, tf2-ros, std-msgs, roscpp, nodelet, eigen, cmake-modules, pluginlib, pcl, sensor-msgs, nodelet-topic-tools, tf2, rostest, tf2-eigen, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-pcl-ros";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/pcl_ros/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "ada9b2af2498d10817c956af471f2c36e6cb1a088a5daeb74188746b7177acd6";
  };

  buildType = "catkin";
  buildInputs = [ rosconsole tf pcl-conversions geometry-msgs message-filters pcl-msgs roslib rosbag tf2-ros std-msgs roscpp nodelet eigen cmake-modules pluginlib pcl sensor-msgs nodelet-topic-tools tf2 tf2-eigen dynamic-reconfigure ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pluginlib pcl rosbag nodelet-topic-tools sensor-msgs message-filters roscpp tf2-ros tf2 nodelet pcl-msgs std-msgs tf2-eigen dynamic-reconfigure tf pcl-conversions geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge for 3D applications involving n-D Point Clouds and 3D geometry
  processing in ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
