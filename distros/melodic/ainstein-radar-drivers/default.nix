
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, can-msgs, catkin, nodelet, pcl-ros, roscpp, socketcan-bridge }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-drivers";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_drivers/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "5dfb5737907fd231491d05a5c871243e3869cde93146a2d28c5185eaef5d2cb9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs can-msgs nodelet pcl-ros roscpp socketcan-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS drivers (interfaces) and nodes for Ainstein radars.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
