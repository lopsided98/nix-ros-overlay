
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-rslidar-msgs";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/CPFL/robosense-release/archive/release/kinetic/rslidar_msgs/1.0.2-0.tar.gz;
    sha256 = "5d281f05f339daa847be5a486a68aa98cf4be9b49a12d1807101cb14cc45be1e";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for Rslidar 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
