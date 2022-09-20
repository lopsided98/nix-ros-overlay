
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-hls-lfcd-lds-driver";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/hls_lfcd_lds_driver-release/archive/release/galactic/hls_lfcd_lds_driver/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "87af426f16a85710b87c4bc7e179110f05d1b47c71006974479e684d61d462a5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS package for LDS(HLS-LFCD2).
    The LDS (Laser Distance Sensor) is a sensor sending the data to Host for the simultaneous localization and mapping (SLAM). Simultaneously the detecting obstacle data can also be sent to Host. HLDS(Hitachi-LG Data Storage) is developing the technology for the moving platform sensor such as Robot Vacuum Cleaners, Home Robot, Robotics Lawn Mower Sensor, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
