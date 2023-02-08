
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-trajectory-action, pr2-controllers-msgs, roslib, rospy, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-joint-trajectory-action-tools";
  version = "0.0.11";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_common_actions-release";
        rev = "release/melodic/joint_trajectory_action_tools/0.0.11-0";
        sha256 = "sha256-MN1herm7yuB6b39Sm6OLqS5ELj8zsPFK6Z58OBVC9VM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-trajectory-action pr2-controllers-msgs roslib rospy trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''joint_trajectory_action_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
