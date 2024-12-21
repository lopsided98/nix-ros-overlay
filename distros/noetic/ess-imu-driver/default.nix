
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-ess-imu-driver";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/cubicleguy/ess_imu_driver-release/archive/release/noetic/ess_imu_driver/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "eb2ed8c6e87888a44cbb4f50fdd026a4b1d83ef4f42053663f8440becbf8b794";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS package for Epson IMU based on C++ wrapper of Linux C driver";
    license = with lib.licenses; [ bsd3 publicDomain ];
  };
}
