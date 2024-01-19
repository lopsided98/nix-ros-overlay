
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, downward, ff, ffha, lpg-planner, pddl-msgs, rospy, time }:
buildRosPackage {
  pname = "ros-noetic-pddl-planner";
  version = "0.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/noetic/pddl_planner/0.1.14-1.tar.gz";
    name = "0.1.14-1.tar.gz";
    sha256 = "69c76ac33a969f267d3208d16b46717e9aa5b5d5ce7c03c228eb2a8bc9b49a16";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib downward ff ffha lpg-planner pddl-msgs rospy time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pddl planner wrappers'';
    license = with lib.licenses; [ asl20 ];
  };
}
