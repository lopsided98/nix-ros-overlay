
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heifu-bringup, heifu-description, heifu-mavros, heifu-msgs, heifu-safety, heifu-simple-waypoint, heifu-tools }:
buildRosPackage {
  pname = "ros-melodic-heifu";
  version = "0.7.7-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "BV-OpenSource";
        repo = "heifu-release";
        rev = "release/melodic/heifu/0.7.7-2";
        sha256 = "sha256-wF+xqTykwL206VnJL1OLn42CQHwlyZPFOb14PlM3w7I=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ heifu-bringup heifu-description heifu-mavros heifu-msgs heifu-safety heifu-simple-waypoint heifu-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The heifu metapackage that installs all heifu related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
