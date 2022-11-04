
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-melodic-ess-imu-ros1-uart-driver";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/cubicleguy/ess_imu_ros1_uart_driver-release/archive/release/melodic/ess_imu_ros1_uart_driver/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "fecf02b078b267bde1db3f1011d7504da248eeb5da7a8f4d174b09f8e2c62b96";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Epson IMU Driver using UART interface for ROS package'';
    license = with lib.licenses; [ bsdOriginal "PD" ];
  };
}
