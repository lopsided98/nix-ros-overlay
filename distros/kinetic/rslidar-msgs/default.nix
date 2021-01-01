
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rslidar-msgs";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/kinetic/rslidar_msgs/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "5d281f05f339daa847be5a486a68aa98cf4be9b49a12d1807101cb14cc45be1e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for Rslidar 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
