
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, pluginlib, tf, roslib, catkin, libpcap, pcl-conversions, nodelet, roscpp, roslaunch, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-o3m151-driver";
  version = "1.2.1";

  src = fetchurl {
    url = "https://github.com/labex-imobs3-gbp/o3m151_driver-release/archive/release/kinetic/o3m151_driver/1.2.1-0.tar.gz";
    name = "1.2.1-0.tar.gz";
    sha256 = "c7909146a00a7b967c2d3e74168a5728960592923a4555eef1f17656325a850f";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs pluginlib tf roslib libpcap pcl-conversions nodelet roscpp diagnostic-updater ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs pluginlib tf roslib libpcap pcl-conversions nodelet roscpp diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for Ifm O3M151 TOF camera.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
