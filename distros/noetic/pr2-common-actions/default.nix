
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-trajectory-action-tools, joint-trajectory-generator, pr2-arm-move-ik, pr2-common-action-msgs, pr2-tilt-laser-interface, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-noetic-pr2-common-actions";
  version = "0.0.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_common_actions-release";
        rev = "release/noetic/pr2_common_actions/0.0.12-1";
        sha256 = "sha256-qFohAtLPFmB4tkpEVd+qB32gkFWZIDjmWIoZNMZItIQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-trajectory-action-tools joint-trajectory-generator pr2-arm-move-ik pr2-common-action-msgs pr2-tilt-laser-interface pr2-tuck-arms-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various actions which help in moving the arms of the PR2
    or getting data from its tilting laser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
