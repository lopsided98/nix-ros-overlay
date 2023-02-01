
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-monitor, pr2-bringup, pr2-camera-synchronizer, pr2-computer-monitor, pr2-controller-configuration, pr2-ethercat, pr2-run-stop-auto-restart }:
buildRosPackage {
  pname = "ros-melodic-pr2-robot";
  version = "1.6.31-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_robot-release";
        rev = "release/melodic/pr2_robot/1.6.31-1";
        sha256 = "sha256-hRPCGGt39pXr9GF/3UCteAZD7ifaq8nai+Nw7MpFegI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ imu-monitor pr2-bringup pr2-camera-synchronizer pr2-computer-monitor pr2-controller-configuration pr2-ethercat pr2-run-stop-auto-restart ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack collects PR2-specific components that are used in bringing up
  a robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
