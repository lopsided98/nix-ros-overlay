
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-hls-lfcd-lds-driver";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/hls_lfcd_lds_driver-release/archive/release/dashing/hls_lfcd_lds_driver/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "a8a86f9afe5bffd509761a72a4491e030d78800164fccb7234f96da212f6c0c6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ boost rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS package for LDS(HLS-LFCD2).
    The LDS (Laser Distance Sensor) is a sensor sending the data to Host for the simultaneous localization and mapping (SLAM). Simultaneously the detecting obstacle data can also be sent to Host. HLDS(Hitachi-LG Data Storage) is developing the technology for the moving platform sensor such as Robot Vacuum Cleaners, Home Robot, Robotics Lawn Mower Sensor, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
