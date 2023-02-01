
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-robosense-description";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tomlogan501";
        repo = "robosense_simulator_release";
        rev = "release/melodic/robosense_description/1.0.0-1";
        sha256 = "sha256-HxOJvGb0dlWiJyhJ01ucwnENknD2m7ngLwbohilmFW8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF and meshes describing Robosense laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
