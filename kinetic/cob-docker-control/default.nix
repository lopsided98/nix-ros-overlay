
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-docker-control";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_docker_control/0.6.7-0.tar.gz;
    sha256 = "8a92a6c115719ca094eb95a72681ee6275367f5927e5cee4e16057f764743300";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous docking'';
    #license = lib.licenses.Apache 2.0;
  };
}
