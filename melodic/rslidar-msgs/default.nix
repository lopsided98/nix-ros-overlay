
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-rslidar-msgs";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/CPFL/robosense-release/archive/release/melodic/rslidar_msgs/1.0.2-0.tar.gz;
    sha256 = "5e648cc16e6b3f0db83e8ce00c9609f6f2da14f0d29951c2cb63e2e2716f953d";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''ROS message definitions for Rslidar 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
