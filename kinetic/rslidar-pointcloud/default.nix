
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, pcl-conversions, rslidar-driver, catkin, sensor-msgs, tf2-ros, roscpp, rostest, rslidar-msgs, roslib, nodelet, dynamic-reconfigure, angles, roslaunch, tf, pcl-ros }:
buildRosPackage {
  pname = "ros-kinetic-rslidar-pointcloud";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/kinetic/rslidar_pointcloud/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "1cb513d025a40412568b3c9d9e37f4a9693d97c533cc828938c8b1360b9f9987";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch pluginlib rslidar-driver sensor-msgs roscpp tf2-ros roslib rostest rslidar-msgs nodelet pcl-ros angles dynamic-reconfigure tf pcl-conversions ];
  propagatedBuildInputs = [ pluginlib rslidar-driver sensor-msgs roscpp roslib rslidar-msgs nodelet dynamic-reconfigure angles tf pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for rslidar 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
