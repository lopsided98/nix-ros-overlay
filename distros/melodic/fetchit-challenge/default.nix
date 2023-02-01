
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, controller-manager, effort-controllers, fetch-gazebo, gazebo-ros, gazebo-ros-control, robot-state-publisher, rospy }:
buildRosPackage {
  pname = "ros-melodic-fetchit-challenge";
  version = "0.9.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_gazebo-release";
        rev = "release/melodic/fetchit_challenge/0.9.2-1";
        sha256 = "sha256-OMso/ie2HjtbevGkPQZSuOenvu1t1RIIkMk9yEGlWU0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs controller-manager effort-controllers fetch-gazebo gazebo-ros gazebo-ros-control robot-state-publisher rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetchit_challenge package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
