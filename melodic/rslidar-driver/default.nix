
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, tf, nodelet, rostest, sensor-msgs, dynamic-reconfigure, roslib, tf2-ros, pcl-ros, std-msgs, catkin, pcl, roscpp, angles, message-generation, rospy, roslaunch, libpcap, rslidar-msgs, pcl-conversions, diagnostic-updater, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-rslidar-driver";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/melodic/rslidar_driver/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "7f1ae8931ebeb64b13cf0b1976fb269a63257de51d8de79c6cebbd716a307661";
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
