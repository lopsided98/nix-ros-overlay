
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-docker-control";
  version = "0.6.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/melodic/cob_docker_control/0.6.8-1.tar.gz";
    name = "0.6.8-1.tar.gz";
    sha256 = "1082dfa38de002e21fee734a6e8f2606d35ed961e990897ae4de27aa4e352413";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous docking'';
    license = with lib.licenses; [ asl20 ];
  };
}
