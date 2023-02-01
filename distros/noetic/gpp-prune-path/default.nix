
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gpp-interface, pluginlib, rostest }:
buildRosPackage {
  pname = "ros-noetic-gpp-prune-path";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "dorezyuk";
        repo = "gpp-release";
        rev = "release/noetic/gpp_prune_path/0.1.0-1";
        sha256 = "sha256-bti9wqUY0hejSF4my61lcZzeZYX0tPOci2C3ONqQlms=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ gpp-interface pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gpp_prune_path plugin will prune the path produced by a global-planner'';
    license = with lib.licenses; [ mit ];
  };
}
