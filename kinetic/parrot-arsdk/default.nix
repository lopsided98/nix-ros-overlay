
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, libtool, ffmpeg, automake, unzip, yasm, nasm, curl, zlib, ncurses, avahi }:
buildRosPackage {
  pname = "ros-kinetic-parrot-arsdk";
  version = "3.14.1";

  src = fetchurl {
    url = https://github.com/AutonomyLab/parrot_arsdk-release/archive/release/kinetic/parrot_arsdk/3.14.1-0.tar.gz;
    sha256 = "694bb67559e158098d309e3c9dc836642ce456540e047764ef38ea6f092a98b6";
  };

  buildInputs = [ autoconf libtool ffmpeg automake unzip yasm nasm curl zlib ncurses avahi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin wrapper for the official ARSDK from Parrot'';
    #license = lib.licenses.BSD;
  };
}
