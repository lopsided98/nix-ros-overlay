
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-hls-lfcd-lds-driver";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/hls-lfcd-lds-driver-release/archive/release/melodic/hls_lfcd_lds_driver/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "818186f69f514fea41023eefdeef1721c8817b0a57a7f113c4f8ae887f1147a2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for LDS(HLS-LFCD2).
    The LDS (Laser Distance Sensor) is a sensor sending the data to Host for the simultaneous localization and mapping (SLAM). Simultaneously the detecting obstacle data can also be sent to Host. HLDS(Hitachi-LG Data Storage) is developing the technology for the moving platform sensor such as Robot Vacuum Cleaners, Home Robot, Robotics Lawn Mower Sensor, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
