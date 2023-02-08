
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, pr2-controller-manager, pr2-gripper-action, pr2-head-action, single-joint-position-action }:
buildRosPackage {
  pname = "ros-noetic-pr2-controller-configuration-gazebo";
  version = "2.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_simulator-release";
        rev = "release/noetic/pr2_controller_configuration_gazebo/2.1.0-1";
        sha256 = "sha256-MDlvzd4pdInfsZYrEbBCP/C4i5qrWNmv7P53fTUsAmc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo pr2-controller-manager pr2-gripper-action pr2-head-action single-joint-position-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A copy of the pr2_controller_configuration package, for use in 
    the PR2 simulator.  We maintain two copies to allow for controller
    gains to be set differently between hardware and simulation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
