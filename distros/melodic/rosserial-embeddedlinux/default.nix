
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosserial-embeddedlinux";
  version = "0.8.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rosserial-release";
        rev = "release/melodic/rosserial_embeddedlinux/0.8.0-0";
        sha256 = "sha256-x2rjc9V9NDk4ft9M1E0ACyHZW1/xnzeNk+YKTZ6fnD4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rosserial-client ];
  propagatedBuildInputs = [ rospy rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for embedded Linux enviroments'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
