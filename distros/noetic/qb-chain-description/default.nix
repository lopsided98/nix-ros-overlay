
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-chain-description";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/noetic/qb_chain_description/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "25dafabe178d4c499ed7dba04283ad553ac0438976107bc0aec294623d5e8ff2";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for complex chains of qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
