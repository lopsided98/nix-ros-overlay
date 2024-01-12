
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, quanergy-client, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-quanergy-client-ros";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/QuanergySystems/quanergy_client_ros-release/archive/release/noetic/quanergy_client_ros/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "0dd116d91350f9ce02e640e07165cf032e155c5a88917d9f6f78b47c6ce8380b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pcl-ros quanergy-client roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quanergy_client_ros package provides a ROS driver for Quanergy sensors'';
    license = with lib.licenses; [ mit ];
  };
}
