
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-docker-control";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_docker_control/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "184596b166694089649886c56c4209805fcab2af3be203793b4a38f200736061";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous docking'';
    license = with lib.licenses; [ asl20 ];
  };
}
