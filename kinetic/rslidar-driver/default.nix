
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, tf, nodelet, rostest, sensor-msgs, dynamic-reconfigure, roslib, tf2-ros, pcl-ros, std-msgs, catkin, pcl, roscpp, angles, message-generation, rospy, roslaunch, libpcap, rslidar-msgs, pcl-conversions, diagnostic-updater, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-rslidar-driver";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/kinetic/rslidar_driver/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "69bb43085676e0c486274aa6435407ba0ab5f3230943a7a14b8b2e4817e65649";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib tf nodelet rostest sensor-msgs dynamic-reconfigure roslib tf2-ros pcl-ros std-msgs pcl roscpp angles rospy message-generation roslaunch libpcap rslidar-msgs pcl-conversions diagnostic-updater ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs dynamic-reconfigure message-runtime pluginlib std-msgs tf roslib pcl rslidar-msgs pcl-conversions nodelet roscpp angles rospy diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''segmentation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
