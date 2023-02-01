
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, roslaunch, rqt-console, rqt-gui, rqt-robot-monitor, rviz, warthog-description }:
buildRosPackage {
  pname = "ros-noetic-warthog-viz";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "warthog_desktop-release";
        rev = "release/noetic/warthog_viz/0.1.1-1";
        sha256 = "sha256-p1w59p3XcIBH/bSsVVCjOY8E6f+wvbuwvnmQ4jTglo4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui rqt-console rqt-gui rqt-robot-monitor rviz warthog-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Warthog.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
