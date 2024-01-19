
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openjdk }:
buildRosPackage {
  pname = "ros-noetic-nao-meshes";
  version = "0.1.13";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_meshes-release/archive/release/noetic/nao_meshes/0.1.13-0.tar.gz";
    name = "0.1.13-0.tar.gz";
    sha256 = "45bbadfb32df9bb25b48560aa4fbe709082a8077ab6ef5a2dc0f239aad5b1c15";
  };

  buildType = "catkin";
  buildInputs = [ catkin openjdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''meshes for the Aldebaran Robotics NAO'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
