
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, openjdk, catkin }:
buildRosPackage {
  pname = "ros-kinetic-nao-meshes";
  version = "0.1.11-r1";

  src = fetchurl {
    url = https://github.com/ros-naoqi/nao_meshes-release/archive/release/kinetic/nao_meshes/0.1.11-1.tar.gz;
    sha256 = "8e671afc307443fe67016a76bfe9dacdb33a39583c9f9f99522d099e8d64aaac";
  };

  nativeBuildInputs = [ catkin openjdk ];

  meta = {
    description = ''meshes for the Aldebaran Robotics NAO'';
    #license = lib.licenses.Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International Public License;
  };
}
