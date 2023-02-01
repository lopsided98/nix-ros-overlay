
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-assembler, laser-filters, laser-geometry }:
buildRosPackage {
  pname = "ros-melodic-laser-pipeline";
  version = "1.6.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "laser_pipeline-release";
        rev = "release/melodic/laser_pipeline/1.6.3-0";
        sha256 = "sha256-6TdVR5VckqOjqi8OplCfDT58uDkR+GRhJvz0tUP5rR4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-assembler laser-filters laser-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package of libraries for processing laser data, including converting laser data
      into 3D representations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
