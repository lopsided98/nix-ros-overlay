
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-twist-mux-msgs";
  version = "2.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "twist_mux_msgs-release";
        rev = "release/noetic/twist_mux_msgs/2.1.0-1";
        sha256 = "sha256-nFTjNHn8Nj72WiOy79WlpfEU1l66Ra/e7n67sfL4Dn0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The twist_mux msgs and actions package'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
