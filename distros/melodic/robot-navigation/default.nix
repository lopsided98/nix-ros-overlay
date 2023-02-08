
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-queue, dlux-global-planner, dlux-plugins, dwb-critics, dwb-local-planner, dwb-msgs, dwb-plugins, global-planner-tests, locomotor, locomotor-msgs, locomove-base, nav-2d-msgs, nav-2d-utils, nav-core-adapter, nav-core2, nav-grid, nav-grid-iterators, nav-grid-pub-sub, nav-grid-server }:
buildRosPackage {
  pname = "ros-melodic-robot-navigation";
  version = "0.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DLu";
        repo = "robot_navigation-release";
        rev = "release/melodic/robot_navigation/0.3.0-1";
        sha256 = "sha256-8ncx0N64Q/96bnM0HQ0RtlwMLfFOmSqC8+E38W5cRoI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-queue dlux-global-planner dlux-plugins dwb-critics dwb-local-planner dwb-msgs dwb-plugins global-planner-tests locomotor locomotor-msgs locomove-base nav-2d-msgs nav-2d-utils nav-core-adapter nav-core2 nav-grid nav-grid-iterators nav-grid-pub-sub nav-grid-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
