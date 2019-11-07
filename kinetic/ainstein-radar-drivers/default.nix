
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, socketcan-bridge, catkin, can-msgs, roscpp, pcl-ros, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-drivers";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_drivers/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "341c5ccf809c0fd997216b09ece9c11671ddcd0aafd2dd6b634ccc7e5ca03411";
  };

  buildType = "catkin";
  buildInputs = [ ainstein-radar-msgs socketcan-bridge can-msgs nodelet pcl-ros roscpp ];
  propagatedBuildInputs = [ ainstein-radar-msgs socketcan-bridge can-msgs roscpp pcl-ros nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS drivers (interfaces) and nodes for Ainstein radars.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
