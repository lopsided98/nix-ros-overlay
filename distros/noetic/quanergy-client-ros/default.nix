
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, quanergy-client, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-quanergy-client-ros";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/QuanergySystems/quanergy_client_ros-release/archive/release/noetic/quanergy_client_ros/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "737d653907cd30df6587b0d844d82a1af35b6bbb843474b2dee9ce429cd3dd43";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl-ros quanergy-client roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quanergy_client_ros package provides a ROS driver for Quanergy sensors'';
    license = with lib.licenses; [ mit ];
  };
}
