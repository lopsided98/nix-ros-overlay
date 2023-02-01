
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pr2-controllers-msgs, roscpp, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-trajectory-action";
  version = "1.10.18-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_controllers-release";
        rev = "release/noetic/joint_trajectory_action/1.10.18-1";
        sha256 = "sha256-lT+aP3Vj/QKlHnkH1lSeyO9w3oglb0UpW1InwMD5g0A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib pr2-controllers-msgs roscpp trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The joint_trajectory_action is a node that exposes an action interface
     to a joint trajectory controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
