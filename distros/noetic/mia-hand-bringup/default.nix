
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mia-hand-description, mia-hand-driver, mia-hand-gazebo, mia-hand-ros-control }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-bringup";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Prensilia-srl";
        repo = "mia_hand_ros_pkgs-release";
        rev = "release/noetic/mia_hand_bringup/1.0.2-1";
        sha256 = "sha256-6vMSfJ9wvHkTOEjli2BACOSwG5kQ5KnUWmyWjO9wIjU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mia-hand-description mia-hand-driver mia-hand-gazebo mia-hand-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for grouping together all Mia Hand config and launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
