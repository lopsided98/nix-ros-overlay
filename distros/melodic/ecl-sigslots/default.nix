
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license, ecl-threads }:
buildRosPackage {
  pname = "ros-melodic-ecl-sigslots";
  version = "0.62.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "ecl_core-release";
        rev = "release/melodic/ecl_sigslots/0.62.2-0";
        sha256 = "sha256-3LkUlSOMUjBqmXx3/E+1TBtiD2+NcDfTeQz5k88N0mI=";
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
