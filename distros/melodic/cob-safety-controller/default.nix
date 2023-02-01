
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-safety-controller";
  version = "0.6.10-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_substitute-release";
        rev = "release/melodic/cob_safety_controller/0.6.10-1";
        sha256 = "sha256-BENKD4B+fD1zTAQ4SomDu0tORxYxlVYv2DKwjB0gQYk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of cob_safety_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
