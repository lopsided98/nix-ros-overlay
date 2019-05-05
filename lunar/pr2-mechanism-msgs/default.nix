
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lunar-pr2-mechanism-msgs";
  version = "1.8.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/pr2_mechanism_msgs-release/archive/release/lunar/pr2_mechanism_msgs/1.8.2-0.tar.gz;
    sha256 = "9a34f3143ae1f577a18cfe5bd31a728cb33b572af93056a2660466f698c8b401";
  };

  buildInputs = [ std-msgs message-generation actionlib-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines services that are used to communicate with
     the realtime control loop. It also defines messages
     that represent the state of the realtime controllers, the joints
     and the actuators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
