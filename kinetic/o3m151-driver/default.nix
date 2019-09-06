
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, libpcap, sensor-msgs, catkin, roscpp, diagnostic-updater, roslib, nodelet, pcl-ros, roslaunch, tf, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-o3m151-driver";
  version = "1.2.1";

  src = fetchurl {
    url = "https://github.com/labex-imobs3-gbp/o3m151_driver-release/archive/release/kinetic/o3m151_driver/1.2.1-0.tar.gz";
    name = "1.2.1-0.tar.gz";
    sha256 = "c7909146a00a7b967c2d3e74168a5728960592923a4555eef1f17656325a850f";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib libpcap sensor-msgs roscpp diagnostic-updater roslib nodelet pcl-ros tf pcl-conversions ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ pluginlib libpcap tf sensor-msgs diagnostic-updater roslib nodelet pcl-ros roscpp pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for Ifm O3M151 TOF camera.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
