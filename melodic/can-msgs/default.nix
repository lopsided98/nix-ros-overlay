
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-can-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/can_msgs/0.8.0-0.tar.gz;
    sha256 = "54a5a705875b8d67403a724d0771fb4af9cdb1a9406504fe05cae90c43a813fa";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN related message types.'';
    #license = lib.licenses.BSD;
  };
}
