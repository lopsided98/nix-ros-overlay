
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, canopen-402, canopen-chain-node, canopen-master, canopen-motor-node, catkin, socketcan-bridge, socketcan-interface }:
buildRosPackage {
  pname = "ros-noetic-ros-canopen";
  version = "0.8.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "ros_canopen-release";
        rev = "release/noetic/ros_canopen/0.8.5-1";
        sha256 = "sha256-kQMfJsVFsKgnXM9FheiRVd//HZJVC6rSyzs8sndkBKE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ can-msgs canopen-402 canopen-chain-node canopen-master canopen-motor-node socketcan-bridge socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A generic canopen implementation for ROS'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
