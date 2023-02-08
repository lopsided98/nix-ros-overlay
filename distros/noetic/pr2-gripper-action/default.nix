
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, pr2-controllers-msgs, pr2-mechanism-controllers, pr2-mechanism-model, robot-mechanism-controllers, roscpp }:
buildRosPackage {
  pname = "ros-noetic-pr2-gripper-action";
  version = "1.10.18-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_controllers-release";
        rev = "release/noetic/pr2_gripper_action/1.10.18-1";
        sha256 = "sha256-Ss20bLptdYLLDU0L8UPwn3RodUz6qgOy3Yp6PWSWw3E=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs pr2-controllers-msgs pr2-mechanism-controllers pr2-mechanism-model robot-mechanism-controllers roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_action provides an action interface for using the
  gripper. Users can specify what position to move to (while limiting the
  force) and the action will report success when the position is reached or
  failure when the gripper cannot move any longer.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
