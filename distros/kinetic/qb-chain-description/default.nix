
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-chain-description";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/kinetic/qb_chain_description/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "72f8dee8c28c970d54a32374023d9cb2aeae608d7d4d148c93aa231ad78afabe";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for complex chains of qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
