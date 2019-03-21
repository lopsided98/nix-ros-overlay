
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-chain-description, catkin, qb-chain-control }:
buildRosPackage {
  pname = "ros-kinetic-qb-chain";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/kinetic/qb_chain/2.0.0-0.tar.gz;
    sha256 = "5389c212c933b956d3a2fab41769fe0b6624b823516b3cf85b71fb2fff047f43";
  };

  propagatedBuildInputs = [ qb-chain-description qb-chain-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface to control multiple qbrobotics® devices simultaneously.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
