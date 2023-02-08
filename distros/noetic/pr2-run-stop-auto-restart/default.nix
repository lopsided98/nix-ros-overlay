
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-msgs, pr2-power-board, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-pr2-run-stop-auto-restart";
  version = "1.6.32-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_robot-release";
        rev = "release/noetic/pr2_run_stop_auto_restart/1.6.32-1";
        sha256 = "sha256-Pupn6w/zH6KlnWGK7Mjmb7IoJXGLq2rFQzCt7fwedls=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-msgs pr2-power-board roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node that monitors the state of the run stops of the pr2_robot. When the state of the
   run stop changes from off to on, this node will automatically enable the power to the motors, and reset
   the motors. This allows you to use the run stop as a 'pause' button. By using the run stop as a tool to
   power up the robot, the run stop is also in reach of the user once the robot starts moving.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
