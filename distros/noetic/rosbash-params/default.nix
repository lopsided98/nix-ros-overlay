
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosbash-params";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "peci1";
        repo = "rosbash_params-release";
        rev = "release/noetic/rosbash_params/1.1.0-1";
        sha256 = "sha256-UceAkhRQ6CagMVDQ5BbZWHKSEdneE2VI3B5FnnmEkLM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosbash rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for writing ros-node-like bash scripts'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
