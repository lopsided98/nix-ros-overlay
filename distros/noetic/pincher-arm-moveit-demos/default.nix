
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-ros-planning-interface, roscpp, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-pincher-arm-moveit-demos";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "pincher_arm-release";
        rev = "release/noetic/pincher_arm_moveit_demos/0.2.0-1";
        sha256 = "sha256-+pmwb0EqJTb2bQ6M/HmLmQWdJ61qq2y5s2T6big7ix0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-core moveit-ros-planning-interface roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Moveit demos for the PhantomX Pincher arm.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
