
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, can-msgs, catkin, nodelet, pcl-ros, roscpp, socketcan-bridge }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-drivers";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_drivers/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "50ab65173d2825aebc4cd3f988ec172e811aafef86c6fdb813c58d66873e2622";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs can-msgs nodelet pcl-ros roscpp socketcan-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS drivers (interfaces) and nodes for Ainstein radars.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
