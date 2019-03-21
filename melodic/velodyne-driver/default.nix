
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, pluginlib, libpcap, tf, catkin, diagnostic-updater, rostest, nodelet, velodyne-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-melodic-velodyne-driver";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/melodic/velodyne_driver/1.5.2-0.tar.gz;
    sha256 = "81b88ba93fe2af5da93cb4e2a8865912c11f35985cbb3636bf480c568b7a6fe4";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ diagnostic-updater pluginlib libpcap dynamic-reconfigure nodelet tf velodyne-msgs roscpp ];
  nativeBuildInputs = [ pluginlib libpcap tf catkin velodyne-msgs roscpp diagnostic-updater dynamic-reconfigure nodelet ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
