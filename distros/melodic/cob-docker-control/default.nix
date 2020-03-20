
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-docker-control";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/melodic/cob_docker_control/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "9b202926dab21ab34206f93c371c540ef70fb0a7c0cc998703a8414e163c74da";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous docking'';
    license = with lib.licenses; [ asl20 ];
  };
}
