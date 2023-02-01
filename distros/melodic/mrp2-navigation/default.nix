
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, cartographer, catkin, gmapping, map-server, move-base, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-mrp2-navigation";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "milvusrobotics";
        repo = "mrp2_common-release";
        rev = "release/melodic/mrp2_navigation/1.0.1-1";
        sha256 = "sha256-zNTELOyqOVBxdzG1P8tRofvGqln4HwwC0KbUGzcivrs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl cartographer gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files, parameters and maps for different navigation applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
