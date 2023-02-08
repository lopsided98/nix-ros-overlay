
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, pr2-msgs, pr2-power-board, roslib, rospy, rqt-gui, rqt-gui-py, rqt-robot-dashboard, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rqt-pr2-dashboard";
  version = "0.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rqt_pr2_dashboard-release";
        rev = "release/noetic/rqt_pr2_dashboard/0.4.0-1";
        sha256 = "sha256-zPKMdCWuTn0LrWu9TZO3nPC5SBl9nwtUcCtHkPmGdTo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs pr2-msgs pr2-power-board roslib rospy rqt-gui rqt-gui-py rqt-robot-dashboard std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pr2_dashboard is a GUI for debugging and controlling low-level state of the PR2.  It shows things like battery status and breaker states, as well as integrating tools like rqt_console and robot_monitor.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
