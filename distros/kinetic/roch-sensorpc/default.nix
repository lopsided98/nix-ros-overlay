
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roch-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-roch-sensorpc";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_sensorpc/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "29855bf9e99615ad683b601ba8e8b3e180386cff168082aefb16f657cfe00f3a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet roch-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ult/psd/cliff to pointcloud:
    Publish Ult, cliff, and psd sensors events as points in a pointcloud, so navistack can use them
    for poor-man navigation. Implemented intended to run together with roch_base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
