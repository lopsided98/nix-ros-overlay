
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-mechanism-msgs";
  version = "1.8.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pr2_mechanism_msgs-release/archive/release/kinetic/pr2_mechanism_msgs/1.8.2-0.tar.gz";
    name = "1.8.2-0.tar.gz";
    sha256 = "f034abe1732223f8d527dabda8d8a8e2a368c201699aa4f5e8189d5b033ae563";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
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
