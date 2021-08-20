
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, quanergy-client, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-quanergy-client-ros";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/QuanergySystems/quanergy_client_ros-release/archive/release/melodic/quanergy_client_ros/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "5553613a8d80533a3f3ee1fa87c85b428ce55e6b683dd58154792cc0d15b188a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl-ros quanergy-client roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The quanergy_client_ros package provides a ROS driver for Quanergy sensors'';
    license = with lib.licenses; [ mit ];
  };
}
