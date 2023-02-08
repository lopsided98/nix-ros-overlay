
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-igvc-self-drive-gazebo";
  version = "0.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "robustify";
        repo = "igvc_self_drive_sim-release";
        rev = "release/melodic/igvc_self_drive_gazebo/0.1.4-1";
        sha256 = "sha256-0jsaVkta0fwi9nrz8N34MUQ+7wjrC1cphKrkZJ6o+wA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo models and runtime configuration for igvc_self_drive simulator'';
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
