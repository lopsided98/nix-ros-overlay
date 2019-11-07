
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-can-msgs";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/can_msgs/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "e7673e104bab0c650f62675ec210d3f8aedc9f9deeff54d7ba56b57ffafd8b7b";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN related message types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
