
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-dashboard-aggregator, pr2-description, pr2-machine, pr2-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-common";
  version = "1.13.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_common-release";
        rev = "release/noetic/pr2_common/1.13.1-1";
        sha256 = "sha256-nRXelHM0Ch/NlpPDDfUrb6IwU55CCbaAalhX/LqpXZw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-dashboard-aggregator pr2-description pr2-machine pr2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the robot kinematics and dynamics, 3D models of robot components, information required for gazebo to simulate the PR2, and messages specific to the PR2 such as detailed information about its power board and fingertip pressure sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
