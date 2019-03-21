
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lpg-planner, catkin, pddl-msgs, ff, ffha, actionlib, rospy, downward, time }:
buildRosPackage {
  pname = "ros-kinetic-pddl-planner";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_planning-release/archive/release/kinetic/pddl_planner/0.1.10-0.tar.gz;
    sha256 = "c42e8ab697a8851635ef3341593cb500993611ac22bb55d97094ec92ddc8c08a";
  };

  propagatedBuildInputs = [ ff ffha time actionlib rospy lpg-planner downward pddl-msgs ];
  nativeBuildInputs = [ rospy catkin pddl-msgs actionlib ];

  meta = {
    description = ''pddl planner wrappers'';
    #license = lib.licenses.Apache License 2.0;
  };
}
