
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-melodic-nmc-nlp-lite";
  version = "0.0.7-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "nmcbins";
        repo = "nmc_nlp_lite-release";
        rev = "release/melodic/nmc_nlp_lite/0.0.7-2";
        sha256 = "sha256-XK0tskFgoFaHT6WIsILbjYGX+9k++cs9MpWACi08GgY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmc_nlp_lite package'';
    license = with lib.licenses; [ mit ];
  };
}
