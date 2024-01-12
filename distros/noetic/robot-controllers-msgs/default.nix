
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-controllers-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/noetic/robot_controllers_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "b715c23f4e9e5732c317cb39f76d0bff7981d28d2671005d9f6aa6353c036ca1";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for use with robot_controllers framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
