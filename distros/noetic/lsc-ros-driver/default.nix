
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, self-test, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-lsc-ros-driver";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/AutonicsLiDAR-release/lsc_ros_driver-release/archive/release/noetic/lsc_ros_driver/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "42c98d9245a7adf469b21dba3a12a2be6a8d91567cb37ece7f285d394f1e78c9";
  };

  buildType = "catkin";
  buildInputs = [ catkin diagnostic-updater self-test ];
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver package for LSC-C Series'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
