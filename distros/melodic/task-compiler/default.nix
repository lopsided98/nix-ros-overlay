
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-planner, roseus-smach, rostest, smach-viewer }:
buildRosPackage {
  pname = "ros-melodic-task-compiler";
  version = "0.1.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_planning-release";
        rev = "release/melodic/task_compiler/0.1.12-1";
        sha256 = "sha256-MmG0p9lAqbDuTuNQ9TIRoLZnADIn5onAbUyDkFs4yV4=";
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
