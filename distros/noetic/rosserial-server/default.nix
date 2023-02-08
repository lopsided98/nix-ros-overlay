
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, python3, roscpp, rosserial-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-rosserial-server";
  version = "0.9.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rosserial-release";
        rev = "release/noetic/rosserial_server/0.9.2-1";
        sha256 = "sha256-lvEa12vBFfeWbXquQzRIR8hNWN7cBz4YTcHHz5Q2Djk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3 ];
  propagatedBuildInputs = [ boost roscpp rosserial-msgs std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A more performance- and stability-oriented server alternative implemented
    in C++ to rosserial_python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
