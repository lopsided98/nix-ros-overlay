
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, libtool, ffmpeg, automake, unzip, yasm, nasm, curl, zlib, ncurses, avahi }:
buildRosPackage {
  pname = "ros-lunar-parrot-arsdk";
  version = "3.14.1";

  src = fetchurl {
    url = https://github.com/AutonomyLab/parrot_arsdk-release/archive/release/lunar/parrot_arsdk/3.14.1-0.tar.gz;
    sha256 = "ee9eef189b15362a993a5f3a82f021b63dcd7c9d7af2aee6c69bc99ca38048a6";
  };

  buildInputs = [ autoconf libtool ffmpeg automake unzip yasm nasm curl zlib ncurses avahi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin wrapper for the official ARSDK from Parrot'';
    #license = lib.licenses.BSD;
  };
}
