
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, ethercat-trigger-controllers, joint-trajectory-action, pr2-calibration-controllers, pr2-controllers-msgs, pr2-gripper-action, pr2-head-action, pr2-mechanism-controllers, robot-mechanism-controllers, single-joint-position-action }:
buildRosPackage {
  pname = "ros-noetic-pr2-controllers";
  version = "1.10.18-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_controllers-release";
        rev = "release/noetic/pr2_controllers/1.10.18-1";
        sha256 = "sha256-Aw8qP+xXxJgYjR4BZQrAAIe/0o/k8Vl2MyoYkH2vTiY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox ethercat-trigger-controllers joint-trajectory-action pr2-calibration-controllers pr2-controllers-msgs pr2-gripper-action pr2-head-action pr2-mechanism-controllers robot-mechanism-controllers single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the controllers that run in realtime on the PR2 and supporting packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
