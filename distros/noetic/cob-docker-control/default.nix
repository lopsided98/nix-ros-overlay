
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-docker-control";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_docker_control/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "ad5a16604e8089ac8a4b548ac74fb924de9a980ec73965f28e1e304cb0809b66";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous docking'';
    license = with lib.licenses; [ asl20 ];
  };
}
