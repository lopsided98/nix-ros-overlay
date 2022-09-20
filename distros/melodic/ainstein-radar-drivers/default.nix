
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, can-msgs, catkin, nodelet, pcl-ros, roscpp, socketcan-bridge }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-drivers";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_drivers/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "de0bffb6af0b60b2508065ca674f88aa04f332107cfd6d96b6725017afb8fda1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ainstein-radar-msgs can-msgs nodelet pcl-ros roscpp socketcan-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS drivers (interfaces) and nodes for Ainstein radars.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
