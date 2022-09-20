
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openjdk }:
buildRosPackage {
  pname = "ros-melodic-pepper-meshes";
  version = "0.2.4-r3";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes-release/archive/release/melodic/pepper_meshes/0.2.4-3.tar.gz";
    name = "0.2.4-3.tar.gz";
    sha256 = "3780fdd3757c5aff60a4c894f3ad2b390630c92ee6931b6ca561d97513d5d199";
  };

  buildType = "catkin";
  buildInputs = [ catkin openjdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''meshes for the Aldebaran Robotics Pepper'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
