
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, boost, catkin, cmake-modules, roscpp, smclib, util-linux }:
buildRosPackage {
  pname = "ros-melodic-bondcpp";
  version = "1.8.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "bond_core-release";
        rev = "release/melodic/bondcpp/1.8.5-1";
        sha256 = "sha256-OkR7SzujB+qZ/uUMZb6rrdb78spbzTqffFAXX4IMuHQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ bond boost roscpp smclib util-linux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
