
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-hls-lfcd-lds-driver";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hls_lfcd_lds_driver-release/archive/release/kilted/hls_lfcd_lds_driver/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "b406ab1f44bf90901974ac6b7e30dad50ac46444ebfecff86c4d6c3e8167ddfe";
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
