
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-ess-imu-driver";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/cubicleguy/ess_imu_driver-release/archive/release/noetic/ess_imu_driver/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "ae04d77e0518c622a232fb9470b284cd52668129a932bf2bc161d20d249f306f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for Epson IMU based on C++ wrapper of Linux C driver'';
    license = with lib.licenses; [ bsd3 publicDomain ];
  };
}
