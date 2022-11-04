
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dynamic-reconfigure, nodelet, pcl-conversions, pcl-ros, pluginlib, roscpp, roslaunch, roslib, rostest, rslidar-driver, rslidar-msgs, sensor-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rslidar-pointcloud";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/melodic/rslidar_pointcloud/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "a6c848ebbe5c69d8458345fbb9c5fd54012a1a96130c1587ccf0b251de64aa75";
  };

  buildType = "catkin";
  buildInputs = [ catkin pcl-conversions roslaunch rostest tf2-ros ];
  propagatedBuildInputs = [ angles dynamic-reconfigure nodelet pcl-ros pluginlib roscpp roslib rslidar-driver rslidar-msgs sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point cloud conversions for rslidar 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
