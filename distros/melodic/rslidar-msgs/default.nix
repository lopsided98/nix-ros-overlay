
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rslidar-msgs";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/CPFL/robosense-release/archive/release/melodic/rslidar_msgs/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "5e648cc16e6b3f0db83e8ce00c9609f6f2da14f0d29951c2cb63e2e2716f953d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for Rslidar 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
