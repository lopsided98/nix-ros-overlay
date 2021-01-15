
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-piksi-rtk-msgs";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/earthrover/earth_rover_piksi-release/archive/release/kinetic/piksi_rtk_msgs/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "97b66905e8f10501eaa569fc83c227277034bd3c6f02f9cb2f2732ccc9328132";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for Piksi RTK GPS ROS Driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
