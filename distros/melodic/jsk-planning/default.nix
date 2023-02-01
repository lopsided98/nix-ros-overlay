
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-msgs, pddl-planner, pddl-planner-viewer, task-compiler }:
buildRosPackage {
  pname = "ros-melodic-jsk-planning";
  version = "0.1.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_planning-release";
        rev = "release/melodic/jsk_planning/0.1.12-1";
        sha256 = "sha256-1Zq7qaiJuRy2s1mQsHTp8rz2Fzja4edJlb6M7lHcyhc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pddl-msgs pddl-planner pddl-planner-viewer task-compiler ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains planning package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
