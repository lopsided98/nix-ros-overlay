
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, pluginlib, roscpp, tf2-eigen, tf2-kdl }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-prbt-ikfast-manipulator-plugin";
  version = "0.8.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "moveit_resources-release";
        rev = "release/noetic/moveit_resources_prbt_ikfast_manipulator_plugin/0.8.2-1";
        sha256 = "sha256-asAIb4XxZsD3eXqiXs4CjRLLUp3Ly/Jp7YTCslAUAR0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin tf2-eigen ];
  propagatedBuildInputs = [ eigen-conversions moveit-core pluginlib roscpp tf2-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The prbt_ikfast_manipulator_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
