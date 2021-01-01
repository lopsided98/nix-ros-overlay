
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, can-msgs, catkin, nodelet, pcl-ros, roscpp, socketcan-bridge }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-drivers";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_drivers/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "864f7950a9dd927671cb137d913738395656b7a4bbd1577bc2a473f1dd1dd0f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs can-msgs nodelet pcl-ros roscpp socketcan-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS drivers (interfaces) and nodes for Ainstein radars.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
