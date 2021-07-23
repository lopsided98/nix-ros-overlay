
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, quanergy-client, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-quanergy-client-ros";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/QuanergySystems/quanergy_client_ros-release/archive/release/noetic/quanergy_client_ros/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "bb1bbcd771601402b9bc57f6f0032561ef127d45c4e6424a91b483d54c3c93a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl-ros quanergy-client roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quanergy_client_ros package provides a ROS driver for Quanergy sensors'';
    license = with lib.licenses; [ mit ];
  };
}
