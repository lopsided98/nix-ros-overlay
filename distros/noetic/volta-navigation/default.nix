
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, dwa-local-planner, global-planner, gmapping, map-server, move-base }:
buildRosPackage {
  pname = "ros-noetic-volta-navigation";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "botsync-gbp";
        repo = "volta-release";
        rev = "release/noetic/volta_navigation/1.2.0-1";
        sha256 = "sha256-DmHX/096kGBJE0SPg7t2d0ih1o8tsxnDpZy4YF/nMnQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl dwa-local-planner global-planner gmapping map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_navigation package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
