
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp }:
buildRosPackage {
  pname = "ros-noetic-jskeus";
  version = "1.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jskeus-release";
        rev = "release/noetic/jskeus/1.2.5-1";
        sha256 = "sha256-uvYrbSlxEtlpPztESHzDI7PDMmqu/rc2Z9epqlb2yI0=";
      };

  buildType = "cmake";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp software developed and used by JSK at The University of Tokyo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
