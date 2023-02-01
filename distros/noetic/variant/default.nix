
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, variant-msgs, variant-topic-tools }:
buildRosPackage {
  pname = "ros-noetic-variant";
  version = "0.1.6-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "anybotics";
        repo = "variant-release";
        rev = "release/noetic/variant/0.1.6-1";
        sha256 = "sha256-D6v8UCyLn/joFMxRRW2ABqZ5Wwl+S0ThszFILC/Vs8E=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ variant-msgs variant-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal variant library.'';
    license = with lib.licenses; [ "GNU-Lesser-General-Public-License-LGPL-" ];
  };
}
