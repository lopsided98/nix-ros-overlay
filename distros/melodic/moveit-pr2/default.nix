
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-moveit-config, pr2-moveit-plugins }:
buildRosPackage {
  pname = "ros-melodic-moveit-pr2";
  version = "0.7.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "moveit_pr2-release";
        rev = "release/melodic/moveit_pr2/0.7.3-1";
        sha256 = "sha256-moBltLpCwxDNZnC9pM10TGlrl9/thrNtTBSy+dJiWAQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-moveit-config pr2-moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''All PR2-specific packages for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
