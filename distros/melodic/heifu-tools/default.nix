
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-view, joy, joy-teleop }:
buildRosPackage {
  pname = "ros-melodic-heifu-tools";
  version = "0.7.7-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "BV-OpenSource";
        repo = "heifu-release";
        rev = "release/melodic/heifu_tools/0.7.7-2";
        sha256 = "sha256-NT+bWJWSXY+joLmKLhTQCOGsOCCyO77p219b7/N3oQ8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ image-view joy joy-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Heifu Tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
