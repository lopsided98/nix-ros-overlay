
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-updater, dynamic-reconfigure, libpcap, message-generation, message-runtime, nodelet, pcl, pcl-conversions, pcl-ros, pluginlib, roscpp, roslaunch, roslib, rospy, rostest, rslidar-msgs, sensor-msgs, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rslidar-driver";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/melodic/rslidar_driver/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "7f1ae8931ebeb64b13cf0b1976fb269a63257de51d8de79c6cebbd716a307661";
  };

  buildType = "catkin";
  buildInputs = [ catkin libpcap message-generation roslaunch rostest tf2-ros ];
  propagatedBuildInputs = [ angles diagnostic-updater dynamic-reconfigure message-runtime nodelet pcl pcl-conversions pcl-ros pluginlib roscpp roslib rospy rslidar-msgs sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''segmentation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
