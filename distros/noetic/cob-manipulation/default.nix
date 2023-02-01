
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-collision-monitor, cob-grasp-generation, cob-lookat-action, cob-manipulation-msgs, cob-moveit-bringup, cob-moveit-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation";
  version = "0.7.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_manipulation-release";
        rev = "release/noetic/cob_manipulation/0.7.8-1";
        sha256 = "sha256-ZIivxC4ythJBdSijLGLojAOxR1G5dnsbGtH21YDxRso=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-collision-monitor cob-grasp-generation cob-lookat-action cob-manipulation-msgs cob-moveit-bringup cob-moveit-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_manipulation stack includes packages that provide manipulation capabilities for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
