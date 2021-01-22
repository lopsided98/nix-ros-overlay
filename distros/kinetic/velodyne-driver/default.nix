
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, libpcap, nodelet, pluginlib, roscpp, roslaunch, rostest, tf, velodyne-msgs }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-driver";
  version = "1.5.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_driver/1.5.2-0.tar.gz";
    name = "1.5.2-0.tar.gz";
    sha256 = "74fa91862e1a3d7ec8c383956c55928ce396b96487c8d9c1cdf701a391b0f6fe";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure libpcap nodelet pluginlib roscpp tf velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
