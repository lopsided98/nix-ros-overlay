
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nao-audio, nao-vision }:
buildRosPackage {
  pname = "ros-kinetic-nao-interaction-launchers";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_interaction-release/archive/release/kinetic/nao_interaction_launchers/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "118e9e45f9c734caf653435597f9a5c4cfb81b168628c2018f319fd1be91cc71";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nao-audio nao-vision ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchers for bringing up the nodes of nao_interaction metapackage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
