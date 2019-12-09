
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-robot-controllers-msgs";
  version = "0.5.2";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/kinetic/robot_controllers_msgs/0.5.2-0.tar.gz";
    name = "0.5.2-0.tar.gz";
    sha256 = "9964d5d08e9c46f13870d07658f54ef869ad0e2e79f3a8fd5cc82c781774f96d";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation actionlib-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for use with robot_controllers framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
