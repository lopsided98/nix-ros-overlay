
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-qb-chain-msgs";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/melodic/qb_chain_msgs/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "029044f1222a3bdb843d9ff947a760e81858208fcc2f50cceb54789313ac5a90";
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
