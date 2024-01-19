
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-pddl-msgs";
  version = "0.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/noetic/pddl_msgs/0.1.14-1.tar.gz";
    name = "0.1.14-1.tar.gz";
    sha256 = "49e500b417f282438e50e47b126c78fc68a0ba9858485645ea4f98bd15e79099";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''message for pddl planner'';
    license = with lib.licenses; [ asl20 ];
  };
}
