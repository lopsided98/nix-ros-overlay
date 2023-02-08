
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, joint-trajectory-action, orocos-kdl, pr2-controllers-msgs, roscpp, urdf }:
buildRosPackage {
  pname = "ros-noetic-joint-trajectory-generator";
  version = "0.0.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_common_actions-release";
        rev = "release/noetic/joint_trajectory_generator/0.0.12-1";
        sha256 = "sha256-pYIF+K73obPdvJlBPLxRZ7jnPK8wcqOtxTT/N9meCvk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib angles joint-trajectory-action orocos-kdl pr2-controllers-msgs roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''joint_trajectory_generator action takes in a trajectory specified
    by a number of joint positions, and it generates a new smooth trajectory
    through these joint positions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
