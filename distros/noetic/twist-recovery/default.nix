
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, geometry-msgs, nav-core, pluginlib, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-twist-recovery";
  version = "0.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "navigation_experimental-release";
        rev = "release/noetic/twist_recovery/0.4.1-1";
        sha256 = "sha256-EMYjWtNdy2B0Bi+/9gPUIt83b4S9KaysbmcxGWoffOI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ base-local-planner costmap-2d geometry-msgs nav-core pluginlib tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that performs a particular used-defined twist.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
