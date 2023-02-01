
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-ipa-differential-docking";
  version = "0.6.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_substitute-release";
        rev = "release/noetic/ipa_differential_docking/0.6.12-1";
        sha256 = "sha256-TqmliUUeFMSe5CuXxxBCnX2nhJJltPS2v1tzmA+P/HE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of ipa_differential_docking package'';
    license = with lib.licenses; [ asl20 ];
  };
}
