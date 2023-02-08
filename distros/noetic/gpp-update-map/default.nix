
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gpp-interface, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-gpp-update-map";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "dorezyuk";
        repo = "gpp-release";
        rev = "release/noetic/gpp_update_map/0.1.0-1";
        sha256 = "sha256-0Ws09TZEAJLyIKvIkwiHV3FvR3jBfPhkCSfILbFyGJ8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gpp-interface pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gpp_update_map plugin will update the map before running the global planner'';
    license = with lib.licenses; [ mit ];
  };
}
