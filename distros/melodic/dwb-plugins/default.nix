
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dwb-local-planner, dynamic-reconfigure, nav-2d-msgs, nav-2d-utils, nav-core2, pluginlib, roscpp, roslint, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-dwb-plugins";
  version = "0.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/melodic/dwb_plugins/0.3.0-1";
        sha256 = "sha256-g+lpZ8y1bUhBsuLA62dzlb/nr+ejIQyTg3wGkMn7B9c=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ angles dwb-local-planner dynamic-reconfigure nav-2d-msgs nav-2d-utils nav-core2 pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Standard implementations of the GoalChecker
      and TrajectoryGenerators for dwb_local_planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
