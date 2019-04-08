
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, libtool, ffmpeg, automake, unzip, yasm, nasm, curl, zlib, ncurses, avahi }:
buildRosPackage {
  pname = "ros-melodic-parrot-arsdk";
  version = "3.14.1";

  src = fetchurl {
    url = https://github.com/AutonomyLab/parrot_arsdk-release/archive/release/melodic/parrot_arsdk/3.14.1-0.tar.gz;
    sha256 = "0a18657e00b65da8ce70a45a210cf1a5a0725ed7daf2c865079501d2d6a9a146";
  };

  buildInputs = [ autoconf libtool ffmpeg automake unzip yasm nasm curl zlib ncurses avahi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin wrapper for the official ARSDK from Parrot'';
    #license = lib.licenses.BSD;
  };
}
