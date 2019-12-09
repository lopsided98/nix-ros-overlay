
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-robot-controllers-msgs";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-release/archive/release/melodic/robot_controllers_msgs/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "e4e27516f3adeed4b5e046e2660975a999082fd1d0322b5c1f5ca0c9c2f0759b";
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
