
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, pluginlib, libpcap, catkin, roscpp, diagnostic-updater, rostest, nodelet, velodyne-msgs, dynamic-reconfigure, tf }:
buildRosPackage {
  pname = "ros-lunar-velodyne-driver";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/lunar/velodyne_driver/1.5.2-0.tar.gz;
    sha256 = "dce09fa5d02c90990a2c0e91b9577e2edbcd8a5d2c61081f6ac66aee8c241c5f";
  };

  buildInputs = [ diagnostic-updater pluginlib libpcap dynamic-reconfigure nodelet tf velodyne-msgs roscpp ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ diagnostic-updater pluginlib libpcap dynamic-reconfigure nodelet tf velodyne-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
