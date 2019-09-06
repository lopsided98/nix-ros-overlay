
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, pluginlib, libpcap, tf, catkin, diagnostic-updater, rostest, nodelet, velodyne-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-driver";
  version = "1.5.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_driver/1.5.2-0.tar.gz";
    name = "1.5.2-0.tar.gz";
    sha256 = "74fa91862e1a3d7ec8c383956c55928ce396b96487c8d9c1cdf701a391b0f6fe";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib libpcap velodyne-msgs roscpp diagnostic-updater nodelet dynamic-reconfigure tf ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ pluginlib libpcap velodyne-msgs roscpp diagnostic-updater nodelet dynamic-reconfigure tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
