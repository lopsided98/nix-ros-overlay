
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning, orocos-kdl, pluginlib, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-fsrobo-r-trajectory-filters";
  version = "0.7.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "FUJISOFT-Robotics";
        repo = "fsrobo_r-release";
        rev = "release/melodic/fsrobo_r_trajectory_filters/0.7.1-1";
        sha256 = "sha256-WlQQIzbzL3X6iEeGsY09Ll7X4AZvmpdU7bY4tl4xlwc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning orocos-kdl pluginlib trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''plugins for filtering trajectories.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
