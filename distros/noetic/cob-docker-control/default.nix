
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-docker-control";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_docker_control/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "8f67942485c8873feca9cbafbe3981c76865896b6d0546fafc2658d786a17291";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous docking'';
    license = with lib.licenses; [ asl20 ];
  };
}
