
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-ros-move-group, pr2-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-melodic-pr2-moveit-config";
  version = "0.7.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "moveit_pr2-release";
        rev = "release/melodic/pr2_moveit_config/0.7.3-1";
        sha256 = "sha256-gaUAEypm5HnNSK29D9VCjS4ylGZwPiTIcSM8ypkVdAQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher moveit-ros-move-group pr2-description robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the pr2 with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
