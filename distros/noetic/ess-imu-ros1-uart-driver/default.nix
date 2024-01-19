
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-ess-imu-ros1-uart-driver";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/cubicleguy/ess_imu_ros1_uart_driver-release/archive/release/noetic/ess_imu_ros1_uart_driver/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "01905810b6dac9f0eb5d220c674f31ad5c95c0bf65bd7d056ab1b535d688ba69";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Epson IMU Driver using UART interface for ROS package'';
    license = with lib.licenses; [ bsdOriginal publicDomain ];
  };
}
