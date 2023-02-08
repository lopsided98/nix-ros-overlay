
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license, ecl-threads }:
buildRosPackage {
  pname = "ros-noetic-ecl-sigslots";
  version = "0.62.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "ecl_core-release";
        rev = "release/noetic/ecl_sigslots/0.62.3-1";
        sha256 = "sha256-Eg5ThkPbDsDuHB3Zc9qU5Lm0b+cgq4G64BG+oK5xl34=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-license ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a signal/slot mechanism (in the same vein as qt sigslots, 
     boost::signals etc for intra-process communication. These include 
     some improvements - they do not need a preprocessor, are fully type safe,
     allow for simple connections via a posix style string identifier 
     and are multithread-safe.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
