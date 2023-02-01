
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, python3Packages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mikrotik-swos-tools";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "peci1";
        repo = "mikrotik_swos_tools-release";
        rev = "release/noetic/mikrotik_swos_tools/1.1.0-1";
        sha256 = "sha256-hDlFaCX5XMRPn8JHcbovhY608LICGVRBKvUDopb24Bw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime python3Packages.requests rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration between ROS (Robot Operating System) and Mikrotik SwOS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
