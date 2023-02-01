
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interval-intersection, joint-states-settler, laser-cb-detector, monocam-settler, urdfdom-py }:
buildRosPackage {
  pname = "ros-noetic-calibration-launch";
  version = "0.10.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "calibration-release";
        rev = "release/noetic/calibration_launch/0.10.15-1";
        sha256 = "sha256-8xngboNaokVyCndanGjnb4SHt9tXkCMvL/1lLcR3E64=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ interval-intersection joint-states-settler laser-cb-detector monocam-settler urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a collection of launch files that can be helpful in configuring
    the calibration stack to run on your robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
