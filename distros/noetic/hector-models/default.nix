
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-sensors-description, hector-xacro-tools }:
buildRosPackage {
  pname = "ros-noetic-hector-models";
  version = "0.5.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_models-release";
        rev = "release/noetic/hector_models/0.5.2-1";
        sha256 = "sha256-Y29P8PV8gTYk3TMNBFMTcjjQdXpK6rpyxKGQinPBYxQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-sensors-description hector-xacro-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_models contains (urdf) models of robots, sensors etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
