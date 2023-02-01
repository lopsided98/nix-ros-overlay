
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, move-base-msgs, nav-msgs, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-move-base-sequence";
  version = "0.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "MarkNaeem";
        repo = "move_base_sequence-release";
        rev = "release/noetic/move_base_sequence/0.0.1-1";
        sha256 = "sha256-oqxbZ5bmLpaSRgmTv/7TyipOXVPQgGUxoqsJpVR2hs0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime move-base-msgs nav-msgs rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base_sequence package'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
