
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, openjdk }:
buildRosPackage {
  pname = "ros-melodic-nao-meshes";
  version = "0.1.12-r2";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_meshes-release/archive/release/melodic/nao_meshes/0.1.12-2.tar.gz";
    name = "0.1.12-2.tar.gz";
    sha256 = "442942148bcf3a939a54415b7229b5785160d7e206402babd96adcab8cde90ad";
  };

  buildType = "catkin";
  buildInputs = [ catkin openjdk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''meshes for the Aldebaran Robotics NAO'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
