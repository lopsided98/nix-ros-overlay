
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-docker-control";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_docker_control/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "3a67048bed576802485198118e09d80a687bd62422669325ef816b6151b9faa5";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous docking'';
    license = with lib.licenses; [ asl20 ];
  };
}
