
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, nav2d-navigator, pluginlib, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-nav2d-exploration";
  version = "0.4.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "skasperski";
        repo = "navigation_2d-release";
        rev = "release/noetic/nav2d_exploration/0.4.3-1";
        sha256 = "sha256-jml/Gvvz0wfHngq2Wb0zTIDB9avVwyCaz//WSURs3rg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2d-navigator pluginlib roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds a collection of plugins for the RobotNavigator, that provide
    different cooperative exploration strategies for a team of mobile robots.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
