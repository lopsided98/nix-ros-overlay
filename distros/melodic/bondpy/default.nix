
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, catkin, pythonPackages, rospy, smclib, util-linux }:
buildRosPackage {
  pname = "ros-melodic-bondpy";
  version = "1.8.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "bond_core-release";
        rev = "release/melodic/bondpy/1.8.5-1";
        sha256 = "sha256-puD1x5qGkQe6/yOP5x9IlssFrsx+sYqq7+PZk0jwzIE=";
      };

  buildType = "catkin";
  buildInputs = [ bond catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ rospy smclib util-linux ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
