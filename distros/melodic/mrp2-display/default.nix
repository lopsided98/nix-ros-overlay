
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrp2-display";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_robot-release/archive/release/melodic/mrp2_display/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "d69ecf628b832b2aae53de015b6f4d19bb11926b99d5c2633797c2d85183025d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for managing touch LCD panel on MRP2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
