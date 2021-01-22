
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, downward, ff, ffha, lpg-planner, pddl-msgs, rospy, time }:
buildRosPackage {
  pname = "ros-kinetic-pddl-planner";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/kinetic/pddl_planner/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "c42e8ab697a8851635ef3341593cb500993611ac22bb55d97094ec92ddc8c08a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib downward ff ffha lpg-planner pddl-msgs rospy time ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pddl planner wrappers'';
    license = with lib.licenses; [ asl20 ];
  };
}
