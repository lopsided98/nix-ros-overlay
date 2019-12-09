
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, socketcan-bridge, catkin, ainstein-radar-msgs, nodelet, roscpp, can-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-drivers";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_drivers/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "96a66a4cefb59faed8193b670db22077e6df3d66f26fe80e0f064e3c3cd8bd89";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros socketcan-bridge ainstein-radar-msgs nodelet roscpp can-msgs ];
  propagatedBuildInputs = [ pcl-ros socketcan-bridge ainstein-radar-msgs nodelet roscpp can-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS drivers (interfaces) and nodes for Ainstein radars.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
