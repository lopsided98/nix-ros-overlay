
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-hls-lfcd-lds-driver";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/hls-lfcd-lds-driver-release/archive/release/kinetic/hls_lfcd_lds_driver/1.1.0-0.tar.gz;
    sha256 = "f45977a88b9db1f469b9a6031a29a25d161d6c3ff9c0ff7415f960f07c050aa4";
  };

  buildInputs = [ std-msgs sensor-msgs roscpp boost ];
  propagatedBuildInputs = [ std-msgs sensor-msgs roscpp boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for LDS(HLS-LFCD2).
    The LDS (Laser Distance Sensor) is a sensor sending the data to Host for the simultaneous localization and mapping (SLAM). Simultaneously the detecting obstacle data can also be sent to Host. HLDS(Hitachi-LG Data Storage) is developing the technology for the moving platform sensor such as Robot Vacuum Cleaners, Home Robot, Robotics Lawn Mower Sensor, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
