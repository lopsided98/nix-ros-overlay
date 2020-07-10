
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, libpcap, nodelet, roscpp, roslaunch, roslint, rostest, tf, velodyne-msgs }:
buildRosPackage {
  pname = "ros-noetic-velodyne-driver";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/noetic/velodyne_driver/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "a81f0c6824c1ac06ee5d2f5abd7cf48d2d5661a93dc5e08381df8eff9c220c59";
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
