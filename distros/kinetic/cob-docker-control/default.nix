
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-docker-control";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_docker_control/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "1e9eb23dd75fb582e6e5b300666a782c1ba9c6bc39d7f7984d83829b7f8c335d";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous docking'';
    license = with lib.licenses; [ asl20 ];
  };
}
