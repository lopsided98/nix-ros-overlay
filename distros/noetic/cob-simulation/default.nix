
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup-sim, cob-gazebo, cob-gazebo-objects, cob-gazebo-tools, cob-gazebo-worlds }:
buildRosPackage {
  pname = "ros-noetic-cob-simulation";
  version = "0.7.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_simulation-release";
        rev = "release/noetic/cob_simulation/0.7.7-1";
        sha256 = "sha256-9DWwCMbB/WNurTKGJWr9ivALtcgwbkATFtu478d/1UU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-bringup-sim cob-gazebo cob-gazebo-objects cob-gazebo-tools cob-gazebo-worlds ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_simulation stack includes packages to work with Care-O-bot within simulation environments, e.g. gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
