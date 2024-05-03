
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, roscpp, self-test, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-lsc-ros-driver";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/AutonicsLiDAR-release/lsc_ros_driver-release/archive/release/noetic/lsc_ros_driver/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "902ea986f386aa5cd5c558aaeedfae8903206ece155e43d5e65101e01c9d7b79";
  };

  buildType = "catkin";
  buildInputs = [ catkin diagnostic-updater self-test ];
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS driver package for LSC-C Series";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
