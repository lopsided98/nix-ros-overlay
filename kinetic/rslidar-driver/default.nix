
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, pcl-ros, tf, pcl-conversions, libpcap, message-generation, message-runtime, angles, roslaunch, roslib, catkin, tf2-ros, std-msgs, roscpp, nodelet, pluginlib, pcl, sensor-msgs, diagnostic-updater, rostest, rslidar-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-rslidar-driver";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/CPFL/robosense-release/archive/release/kinetic/rslidar_driver/1.0.2-0.tar.gz;
    sha256 = "69bb43085676e0c486274aa6435407ba0ab5f3230943a7a14b8b2e4817e65649";
  };

  buildInputs = [ pcl-ros rospy tf pcl-conversions libpcap message-generation angles roslaunch roslib tf2-ros std-msgs roscpp nodelet pluginlib pcl sensor-msgs diagnostic-updater rostest rslidar-msgs dynamic-reconfigure ];
  propagatedBuildInputs = [ pluginlib pcl sensor-msgs roscpp rospy diagnostic-updater roslib rslidar-msgs message-runtime nodelet pcl-ros std-msgs angles dynamic-reconfigure tf pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''segmentation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
