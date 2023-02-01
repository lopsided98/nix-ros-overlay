
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid, nav-grid-pub-sub, nav-msgs, pluginlib, roscpp, roslint, rostest, rosunit, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-dlux-global-planner";
  version = "0.3.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/noetic/dlux_global_planner/0.3.0-2";
        sha256 = "sha256-1VFV9n14wCm5VbSr5LnwMlHT6V2XqhUwjhVh4J0f0y4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid nav-grid-pub-sub nav-msgs pluginlib roscpp visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin based global planner implementing the nav_core2::GlobalPlanner interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
