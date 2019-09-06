
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rclcpp, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-dashing-hls-lfcd-lds-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/hls_lfcd_lds_driver-release/archive/release/dashing/hls_lfcd_lds_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "e61706dcdf5eba4b6979572f5eca489af4d17d06123dba49f4075f103f00372c";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp boost ];
  propagatedBuildInputs = [ sensor-msgs rclcpp boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS package for LDS(HLS-LFCD2).
    The LDS (Laser Distance Sensor) is a sensor sending the data to Host for the simultaneous localization and mapping (SLAM). Simultaneously the detecting obstacle data can also be sent to Host. HLDS(Hitachi-LG Data Storage) is developing the technology for the moving platform sensor such as Robot Vacuum Cleaners, Home Robot, Robotics Lawn Mower Sensor, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
