
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy-teleop, key-teleop, mouse-teleop, teleop-tools-msgs }:
buildRosPackage {
  pname = "ros-noetic-teleop-tools";
  version = "0.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "teleop_tools-release";
        rev = "release/noetic/teleop_tools/0.4.0-1";
        sha256 = "sha256-cglVJ5ak3cSL7dWxzhDSYgzDdpUalHCfF+z3/ln0zAA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy-teleop key-teleop mouse-teleop teleop-tools-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
