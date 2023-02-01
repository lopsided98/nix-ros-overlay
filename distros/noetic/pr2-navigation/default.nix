
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dwa-local-planner, laser-tilt-controller-filter, pr2-move-base, pr2-navigation-config, pr2-navigation-global, pr2-navigation-local, pr2-navigation-perception, pr2-navigation-self-filter, pr2-navigation-slam, pr2-navigation-teleop, semantic-point-annotator }:
buildRosPackage {
  pname = "ros-noetic-pr2-navigation";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_navigation-release";
        rev = "release/noetic/pr2_navigation/0.2.0-1";
        sha256 = "sha256-ADufJZlATh/7pCug+4DjvKA+JcvOsm+Viw7dofgnMc4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dwa-local-planner laser-tilt-controller-filter pr2-move-base pr2-navigation-config pr2-navigation-global pr2-navigation-local pr2-navigation-perception pr2-navigation-self-filter pr2-navigation-slam pr2-navigation-teleop semantic-point-annotator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_navigation stack holds common configuration options for running the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
