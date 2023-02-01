
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, automake, avahi, catkin, curl, ffmpeg, libtool, nasm, ncurses, unzip, yasm, zlib }:
buildRosPackage {
  pname = "ros-melodic-parrot-arsdk";
  version = "3.14.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "AutonomyLab";
        repo = "parrot_arsdk-release";
        rev = "release/melodic/parrot_arsdk/3.14.1-0";
        sha256 = "sha256-yYX6Y5AxV9JloUAzJtzBJeIFSF0qQZcBys62yDZtiGw=";
      };

  buildType = "catkin";
  buildInputs = [ autoconf automake avahi catkin curl ffmpeg libtool nasm ncurses unzip yasm zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin wrapper for the official ARSDK from Parrot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
