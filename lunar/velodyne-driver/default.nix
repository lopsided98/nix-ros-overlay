
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, pluginlib, libpcap, tf, catkin, diagnostic-updater, rostest, nodelet, velodyne-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-lunar-velodyne-driver";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/lunar/velodyne_driver/1.5.2-0.tar.gz;
    sha256 = "dce09fa5d02c90990a2c0e91b9577e2edbcd8a5d2c61081f6ac66aee8c241c5f";
  };

  buildInputs = [ pluginlib libpcap velodyne-msgs roscpp diagnostic-updater nodelet dynamic-reconfigure tf ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ pluginlib libpcap velodyne-msgs roscpp diagnostic-updater nodelet dynamic-reconfigure tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
