
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-chain-description";
  version = "2.0.0";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/melodic/qb_chain_description/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "fe4822d09d3d0b0ec0a6b337799c04774d1a775d700962cb6e5fd043c836d7c2";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for complex chains of qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
