
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ess-imu-ros1-uart-driver";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/cubicleguy/ess_imu_ros1_uart_driver-release/archive/release/noetic/ess_imu_ros1_uart_driver/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "a9f2be612ea0357d970ab88231b35436add0c5fd95467a6c1449922fab7a12b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Epson IMU Driver using UART interface for ROS package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
