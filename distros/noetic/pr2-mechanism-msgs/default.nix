
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-mechanism-msgs";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pr2_mechanism_msgs-release/archive/release/noetic/pr2_mechanism_msgs/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "5d3f5843590f3d0989a3def505112dbbcbd474766cfa2621f90082f6914cc8c9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines services that are used to communicate with
     the realtime control loop. It also defines messages
     that represent the state of the realtime controllers, the joints
     and the actuators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
