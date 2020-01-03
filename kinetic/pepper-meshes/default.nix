
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openjdk }:
buildRosPackage {
  pname = "ros-kinetic-pepper-meshes";
  version = "0.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes-release/archive/release/kinetic/pepper_meshes/0.2.3-2.tar.gz";
    name = "0.2.3-2.tar.gz";
    sha256 = "0a09c49dbdab8f7a533c9ac348ad6e65582f7cece91a6dda9368ce64509cf86a";
  };

  buildType = "catkin";
  buildInputs = [ openjdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''meshes for the Aldebaran Robotics Pepper'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
