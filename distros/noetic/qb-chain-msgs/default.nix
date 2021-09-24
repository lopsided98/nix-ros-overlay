
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-qb-chain-msgs";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/noetic/qb_chain_msgs/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "d4feec1101c5abd18c9c562a98c948241f84bbf563dd9f66faa54807164397f1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''message to control end-effector pose, robot sitiffness and velocity'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
