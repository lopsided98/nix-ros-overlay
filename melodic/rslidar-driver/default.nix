
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, pcl-ros, tf, pcl-conversions, libpcap, message-generation, message-runtime, angles, roslaunch, roslib, catkin, tf2-ros, std-msgs, nodelet, roscpp, pluginlib, pcl, sensor-msgs, diagnostic-updater, rostest, rslidar-msgs, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-rslidar-driver";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/CPFL/robosense-release/archive/release/melodic/rslidar_driver/1.0.2-0.tar.gz;
    sha256 = "7f1ae8931ebeb64b13cf0b1976fb269a63257de51d8de79c6cebbd716a307661";
  };

  propagatedBuildInputs = [ pluginlib pcl sensor-msgs roscpp rospy diagnostic-updater roslib rslidar-msgs message-runtime nodelet pcl-ros std-msgs angles dynamic-reconfigure tf pcl-conversions ];
  nativeBuildInputs = [ catkin tf2-ros pcl-ros std-msgs rospy angles roscpp nodelet tf pcl-conversions pluginlib libpcap pcl sensor-msgs diagnostic-updater rostest rslidar-msgs message-generation dynamic-reconfigure roslaunch roslib ];

  meta = {
    description = ''segmentation'';
    #license = lib.licenses.BSD;
  };
}
