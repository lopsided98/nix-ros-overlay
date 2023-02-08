
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, kdl-parser, message-filters, orocos-kdl, pr2-controllers-msgs, roscpp, sensor-msgs, tf, tf-conversions, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-head-action";
  version = "1.10.18-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_controllers-release";
        rev = "release/noetic/pr2_head_action/1.10.18-1";
        sha256 = "sha256-uRWWaP+D7MHcDx6Mk9aCzgJq/fNqticqi2NffP0ij+Q=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib geometry-msgs kdl-parser message-filters orocos-kdl pr2-controllers-msgs roscpp sensor-msgs tf tf-conversions trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The PR2 head action is a node that provides an action interface for
  pointing the head of the PR2.  It passes trajectory goals to the
  controller, and reports success when they have finished executing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
