
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openjdk }:
buildRosPackage {
  pname = "ros-kinetic-nao-meshes";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_meshes-release/archive/release/kinetic/nao_meshes/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "1fada55686fff8c2979efa0601b2f08c959c6deef399cf1c42de8695e5298a40";
  };

  buildType = "catkin";
  buildInputs = [ openjdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''meshes for the Aldebaran Robotics NAO'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
