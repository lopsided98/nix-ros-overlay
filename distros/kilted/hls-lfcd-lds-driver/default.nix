
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-hls-lfcd-lds-driver";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hls_lfcd_lds_driver-release/archive/release/kilted/hls_lfcd_lds_driver/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "a2e11f842e647f6d61bb58fb8200fd3bcfd42ab676ad72a1e2968aa9e40c5bf0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS package for LDS-01(HLS-LFCD2).
    The LDS (Laser Distance Sensor) is a sensor sending the data to Host for the simultaneous localization and mapping (SLAM). Simultaneously the detecting obstacle data can also be sent to Host. HLDS(Hitachi-LG Data Storage) is developing the technology for the moving platform sensor such as Robot Vacuum Cleaners, Home Robot, Robotics Lawn Mower Sensor, etc.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
