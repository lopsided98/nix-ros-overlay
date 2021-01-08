
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-chain-control, qb-chain-controllers, qb-chain-description }:
buildRosPackage {
  pname = "ros-kinetic-qb-chain";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/kinetic/qb_chain/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "9f44063658efe1cd32fd58111ce779593159a4762a001e2b20419b095958c033";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-chain-control qb-chain-controllers qb-chain-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface to control multiple qbrobotics® devices simultaneously.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
