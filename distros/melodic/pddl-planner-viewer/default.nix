
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-planner }:
buildRosPackage {
  pname = "ros-melodic-pddl-planner-viewer";
  version = "0.1.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_planning-release";
        rev = "release/melodic/pddl_planner_viewer/0.1.12-1";
        sha256 = "sha256-/TNoX6J0na0Aoo0PCHs6BpWiCjMCj0lOgI8/B1zEILA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pddl-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''a viewer of pddl_planner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
