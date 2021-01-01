
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-planner, roseus-smach, rostest }:
buildRosPackage {
  pname = "ros-kinetic-task-compiler";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/kinetic/task_compiler/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "2191991cc36b6a91b40d68ce8224f3ace51fa6af0ea14ca07b5271ca471e6052";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ pddl-planner roseus-smach ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''task_compiler

     Compiler that translate task description in PDDL (Planning Domain Description Language) to SMACH (state machine based execution and coordination system) description.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
