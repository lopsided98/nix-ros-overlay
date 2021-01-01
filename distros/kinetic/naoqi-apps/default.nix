
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-apps";
  version = "0.5.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_apps/0.5.5-0.tar.gz";
    name = "0.5.5-0.tar.gz";
    sha256 = "84d6d32a64d39272d8379909edd05879c9bdb4dad995225e2bfc27bff092d0cc";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package bridging NAOqi to executing things on the robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
