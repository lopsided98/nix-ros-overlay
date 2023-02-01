
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-soem";
  version = "1.4.1003-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "mgruhler";
        repo = "soem-gbp";
        rev = "release/melodic/soem/1.4.1003-1";
        sha256 = "sha256-kz+EHVji3/7AgG21sBsyFBuZ/fh+avgpi+LVvIDpJjs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the Simple Open EtherCAT Master SOEM.
    This is an updated version of the original SOEM wrapper released into ROS now including
    the upstream Repo as a git subtree.'';
    license = with lib.licenses; [ "GPLv2-with-linking-exception" ];
  };
}
