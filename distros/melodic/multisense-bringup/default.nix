
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, multisense-description, multisense-ros }:
buildRosPackage {
  pname = "ros-melodic-multisense-bringup";
  version = "4.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "carnegieroboticsllc";
        repo = "multisense_ros-release";
        rev = "release/melodic/multisense_bringup/4.0.4-1";
        sha256 = "sha256-DRQeWGJK55FxDEecBbi/78gXwkiKR84cAebkNWH9Wj4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ multisense-description multisense-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
