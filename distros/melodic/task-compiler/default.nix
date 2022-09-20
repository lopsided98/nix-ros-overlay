
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-planner, roseus-smach, rostest, smach-viewer }:
buildRosPackage {
  pname = "ros-melodic-task-compiler";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/melodic/task_compiler/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "0d42aa893bab08122853cd293c293b1b3099bbf0dde19872b5d0d21d4d205aba";
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
