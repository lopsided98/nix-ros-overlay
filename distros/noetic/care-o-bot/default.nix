
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, care-o-bot-robot, care-o-bot-simulation, catkin, cob-manipulation, cob-navigation }:
buildRosPackage {
  pname = "ros-noetic-care-o-bot";
  version = "0.7.10-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "care-o-bot-release";
        rev = "release/noetic/care_o_bot/0.7.10-1";
        sha256 = "sha256-EqF3H0wmKtySF6lrMzz8KcYNqXX/cN2AZzrNTGDRgkw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ care-o-bot-robot care-o-bot-simulation cob-manipulation cob-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The care-o-bot meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
