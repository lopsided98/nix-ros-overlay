
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-controllers-msgs";
  version = "0.7.1-r4";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/noetic/robot_controllers_msgs/0.7.1-4.tar.gz";
    name = "0.7.1-4.tar.gz";
    sha256 = "6ba12ebcf7f5d4c853c21badb92aa4f4659c2f4635fc80dec6568b91d1458abc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages for use with robot_controllers framework.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
