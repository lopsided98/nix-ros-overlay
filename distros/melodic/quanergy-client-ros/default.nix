
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, quanergy-client, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-quanergy-client-ros";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/QuanergySystems/quanergy_client_ros-release/archive/release/melodic/quanergy_client_ros/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "95707f54940cf7aad18f6fe8d4d49c869486715393d6608b0b44beaa3ba60bcb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl-ros quanergy-client roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quanergy_client_ros package provides a ROS driver for Quanergy sensors'';
    license = with lib.licenses; [ mit ];
  };
}
