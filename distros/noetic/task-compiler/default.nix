
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-planner, roseus-smach, rostest, smach-viewer }:
buildRosPackage {
  pname = "ros-noetic-task-compiler";
  version = "0.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/noetic/task_compiler/0.1.14-1.tar.gz";
    name = "0.1.14-1.tar.gz";
    sha256 = "19c4acf423090951fea4b0278a5323073e0cf8eccb95cd7f65cda76cfaba88ec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pddl-planner roseus-smach smach-viewer ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''task_compiler

     Compiler that translate task description in PDDL (Planning Domain Description Language) to SMACH (state machine based execution and coordination system) description.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
