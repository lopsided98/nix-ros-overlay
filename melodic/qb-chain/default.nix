
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-chain-description, catkin, qb-chain-control }:
buildRosPackage {
  pname = "ros-melodic-qb-chain";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/melodic/qb_chain/2.0.0-0.tar.gz;
    sha256 = "e21beffe73643665345d9027e82e376dd9b4cad3b1e429653276333060221e60";
  };

  propagatedBuildInputs = [ qb-chain-description qb-chain-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface to control multiple qbrobotics® devices simultaneously.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
