
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, pcl-conversions, rslidar-driver, catkin, sensor-msgs, tf2-ros, roscpp, rostest, rslidar-msgs, roslib, nodelet, dynamic-reconfigure, angles, roslaunch, tf, pcl-ros }:
buildRosPackage {
  pname = "ros-kinetic-rslidar-pointcloud";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/CPFL/robosense-release/archive/release/kinetic/rslidar_pointcloud/1.0.2-0.tar.gz;
    sha256 = "1cb513d025a40412568b3c9d9e37f4a9693d97c533cc828938c8b1360b9f9987";
  };

  propagatedBuildInputs = [ pluginlib tf rslidar-driver sensor-msgs roscpp rslidar-msgs nodelet pcl-ros angles dynamic-reconfigure roslib ];
  nativeBuildInputs = [ roslaunch pluginlib tf rslidar-driver sensor-msgs catkin roscpp tf2-ros rostest rslidar-msgs nodelet pcl-ros angles dynamic-reconfigure roslib pcl-conversions ];

  meta = {
    description = ''Point cloud conversions for rslidar 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
