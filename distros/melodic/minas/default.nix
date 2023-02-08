
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-manager, minas-control, tra1-bringup, tra1-description, tra1-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-minas";
  version = "1.0.10-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "minas-release";
        rev = "release/melodic/minas/1.0.10-1";
        sha256 = "sha256-heOgTwAbn4cHaapFkmWd4hQX0GV7muj3JHbEw2RPe8E=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ethercat-manager minas-control tra1-bringup tra1-description tra1-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for minas for PANASONIC MINAS EtherCAT Motor Driver Control System'';
    license = with lib.licenses; [ "GPL-2.0-only" bsdOriginal "CC-BY-SA" ];
  };
}
