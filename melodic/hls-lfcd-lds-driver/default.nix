
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, std-msgs, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-hls-lfcd-lds-driver";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/hls-lfcd-lds-driver-release/archive/release/melodic/hls_lfcd_lds_driver/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d748e0b392248e2d2c64695d95a7ac37fe884a0f0c999e2e0c8e69931efeda89";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-msgs boost roscpp ];
  propagatedBuildInputs = [ sensor-msgs std-msgs boost roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for LDS(HLS-LFCD2).
    The LDS (Laser Distance Sensor) is a sensor sending the data to Host for the simultaneous localization and mapping (SLAM). Simultaneously the detecting obstacle data can also be sent to Host. HLDS(Hitachi-LG Data Storage) is developing the technology for the moving platform sensor such as Robot Vacuum Cleaners, Home Robot, Robotics Lawn Mower Sensor, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
