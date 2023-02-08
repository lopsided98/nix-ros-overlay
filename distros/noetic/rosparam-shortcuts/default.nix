
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, eigen-conversions, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rosparam-shortcuts";
  version = "0.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PickNikRobotics";
        repo = "rosparam_shortcuts-release";
        rev = "release/noetic/rosparam_shortcuts/0.4.0-1";
        sha256 = "sha256-p4ZPcva4QcfB3N+ckPK+noos7vSqCC2Its/m29XKvKs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules eigen roslint ];
  propagatedBuildInputs = [ eigen-conversions roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Quickly load variables from rosparam with good command line error checking.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
