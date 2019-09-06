
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-docker-control";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_docker_control/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "ed3b9976ae565dbe95fa90f03c3aa875ae7f6ce8755f38c89a02a03af2947967";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous docking'';
    license = with lib.licenses; [ asl20 ];
  };
}
