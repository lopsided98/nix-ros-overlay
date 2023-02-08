
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, hector-gazebo-plugins, robot-localization, usv-gazebo-plugins, velodyne-gazebo-plugins, wamv-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-wamv-gazebo";
  version = "1.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "vrx-release";
        rev = "release/melodic/wamv_gazebo/1.3.0-1";
        sha256 = "sha256-JAYZ62KEk8nfx2hAIqgEV/BjDkBZtrL9vULE+nnSe5Q=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-plugins hector-gazebo-plugins robot-localization usv-gazebo-plugins velodyne-gazebo-plugins wamv-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides templates and examples for integrating the WAM-V model into gazebo with dynamics, sensors, etc.'';
    license = with lib.licenses; [ asl20 ];
  };
}
