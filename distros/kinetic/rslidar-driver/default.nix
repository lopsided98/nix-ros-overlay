
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-updater, dynamic-reconfigure, libpcap, message-generation, message-runtime, nodelet, pcl, pcl-conversions, pcl-ros, pluginlib, roscpp, roslaunch, roslib, rospy, rostest, rslidar-msgs, sensor-msgs, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-rslidar-driver";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/kinetic/rslidar_driver/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "69bb43085676e0c486274aa6435407ba0ab5f3230943a7a14b8b2e4817e65649";
  };

  buildType = "catkin";
  buildInputs = [ libpcap message-generation roslaunch rostest tf2-ros ];
  propagatedBuildInputs = [ angles diagnostic-updater dynamic-reconfigure message-runtime nodelet pcl pcl-conversions pcl-ros pluginlib roscpp roslib rospy rslidar-msgs sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''segmentation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
