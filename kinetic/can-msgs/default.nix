
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-can-msgs";
  version = "0.7.10";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/can_msgs/0.7.10-0.tar.gz;
    sha256 = "7c0ef8e282e298de88c84f31fc1df1645e2f5826ea3c971b9ae8a9cfdb4dde2e";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN related message types.'';
    #license = lib.licenses.BSD;
  };
}
