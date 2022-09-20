
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism-msgs";
  version = "1.8.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pr2_mechanism_msgs-release/archive/release/melodic/pr2_mechanism_msgs/1.8.2-0.tar.gz";
    name = "1.8.2-0.tar.gz";
    sha256 = "ed530def634447f8d6970857f1f33b8ddfadefc07cffd6e4ce01e71e179df4cf";
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
