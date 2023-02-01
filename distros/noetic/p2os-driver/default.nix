
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, geometry-msgs, kdl-parser, message-runtime, nav-msgs, p2os-msgs, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-p2os-driver";
  version = "2.2.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "allenh1";
        repo = "p2os-release";
        rev = "release/noetic/p2os_driver/2.2.1-2";
        sha256 = "sha256-ApFyATWsSGEQNLfmlaJiDdAPjvqQtw6Vt2PdOcyRC+s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs kdl-parser message-runtime nav-msgs p2os-msgs roscpp std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
