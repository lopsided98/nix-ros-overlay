
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, libpcap, nodelet, roscpp, roslaunch, roslint, rostest, tf, velodyne-msgs }:
buildRosPackage {
  pname = "ros-noetic-velodyne-driver";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne_driver/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "d0ac953f3a48c3e13e60a94fb9ed768ea22699004bc7c62a638785dc37f1ffea";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure libpcap nodelet roscpp tf velodyne-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
