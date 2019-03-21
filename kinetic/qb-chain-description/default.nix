
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-chain-description";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/kinetic/qb_chain_description/2.0.0-0.tar.gz;
    sha256 = "00b1fe662682ef32bc816d23c9904ecb3c3545157ac1361c0883c95c226677d2";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for complex chains of qbrobotics® devices.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
