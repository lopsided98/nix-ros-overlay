
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-chain-description";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/noetic/qb_chain_description/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "24ec3edb5cc1bfaae15f5c699e51ceb98809166699f17165f25c10dcc2844cec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for complex chains of qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
