
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, rospy, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-piksi-rtk-msgs";
  version = "1.8.2-r1";

  src = fetchurl {
    url = https://github.com/earthrover/earth_rover_piksi-release/archive/release/kinetic/piksi_rtk_msgs/1.8.2-1.tar.gz;
    sha256 = "97b66905e8f10501eaa569fc83c227277034bd3c6f02f9cb2f2732ccc9328132";
  };

  buildInputs = [ message-generation message-runtime rospy std-msgs sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-generation message-runtime rospy std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for Piksi RTK GPS ROS Driver.'';
    #license = lib.licenses.BSD;
  };
}