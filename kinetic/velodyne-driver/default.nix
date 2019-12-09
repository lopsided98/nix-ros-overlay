
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-msgs, dynamic-reconfigure, pluginlib, tf, catkin, libpcap, nodelet, roscpp, roslaunch, rostest, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-driver";
  version = "1.5.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_driver/1.5.2-0.tar.gz";
    name = "1.5.2-0.tar.gz";
    sha256 = "74fa91862e1a3d7ec8c383956c55928ce396b96487c8d9c1cdf701a391b0f6fe";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure pluginlib tf libpcap nodelet roscpp velodyne-msgs diagnostic-updater ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure pluginlib tf libpcap nodelet roscpp velodyne-msgs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
