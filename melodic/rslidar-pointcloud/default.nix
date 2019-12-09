
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, dynamic-reconfigure, pluginlib, roslaunch, tf, catkin, roslib, rslidar-msgs, pcl-conversions, nodelet, roscpp, angles, rslidar-driver, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rslidar-pointcloud";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/melodic/rslidar_pointcloud/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "a6c848ebbe5c69d8458345fbb9c5fd54012a1a96130c1587ccf0b251de64aa75";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs dynamic-reconfigure pluginlib roslaunch tf roslib rslidar-msgs pcl-conversions nodelet roscpp angles rslidar-driver rostest tf2-ros ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs dynamic-reconfigure pluginlib tf roslib rslidar-msgs nodelet roscpp angles rslidar-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for rslidar 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
