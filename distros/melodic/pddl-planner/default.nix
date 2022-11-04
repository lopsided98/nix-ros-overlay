
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, downward, ff, ffha, lpg-planner, pddl-msgs, rospy, time }:
buildRosPackage {
  pname = "ros-melodic-pddl-planner";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/melodic/pddl_planner/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "e686d7ea6ca73282c5a3166e1a2628f43a1e52da107fadb97fc5fcc06a27e2ba";
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
