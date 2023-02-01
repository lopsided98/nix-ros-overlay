
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, libpng }:
buildRosPackage {
  pname = "ros-noetic-multisense-lib";
  version = "4.0.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "carnegieroboticsllc";
        repo = "multisense_ros-release";
        rev = "release/noetic/multisense_lib/4.0.5-1";
        sha256 = "sha256-QNxkWpR9lnfVEiXF3vfdN21fdqEQhSMQB+TnMmN98JU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge libpng ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
