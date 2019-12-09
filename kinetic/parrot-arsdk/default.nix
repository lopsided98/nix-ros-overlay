
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ncurses, avahi, ffmpeg, nasm, libtool, catkin, curl, unzip, autoconf, zlib, automake, yasm }:
buildRosPackage {
  pname = "ros-kinetic-parrot-arsdk";
  version = "3.14.1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/parrot_arsdk-release/archive/release/kinetic/parrot_arsdk/3.14.1-0.tar.gz";
    name = "3.14.1-0.tar.gz";
    sha256 = "694bb67559e158098d309e3c9dc836642ce456540e047764ef38ea6f092a98b6";
  };

  buildType = "catkin";
  buildInputs = [ ncurses avahi ffmpeg nasm libtool unzip autoconf zlib automake yasm curl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin wrapper for the official ARSDK from Parrot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
