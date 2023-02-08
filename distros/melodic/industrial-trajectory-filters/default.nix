
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, moveit-core, moveit-ros-planning, orocos-kdl, pluginlib, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-industrial-trajectory-filters";
  version = "0.7.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "industrial_core-release";
        rev = "release/melodic/industrial_trajectory_filters/0.7.3-1";
        sha256 = "sha256-mYFmwuST9s4knzmD3KiLBzZ+Y6yRtozbXtsDY0NqcSU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ class-loader moveit-core moveit-ros-planning orocos-kdl pluginlib trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
     ROS Industrial libraries/plugins for filtering trajectories.
   </p>
   <p>
     This package is part of the ROS Industrial program and contains libraries
     and moveit plugins for filtering robot trajectories.
   </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
