
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, velodyne-msgs, dynamic-reconfigure, pluginlib, tf, catkin, libpcap, nodelet, roscpp, roslaunch, rostest, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-velodyne-driver";
  version = "1.5.2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/melodic/velodyne_driver/1.5.2-0.tar.gz";
    name = "1.5.2-0.tar.gz";
    sha256 = "81b88ba93fe2af5da93cb4e2a8865912c11f35985cbb3636bf480c568b7a6fe4";
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
