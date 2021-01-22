
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-chain-control, qb-chain-description }:
buildRosPackage {
  pname = "ros-melodic-qb-chain";
  version = "2.0.0";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/melodic/qb_chain/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "e21beffe73643665345d9027e82e376dd9b4cad3b1e429653276333060221e60";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-chain-control qb-chain-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface to control multiple qbrobotics® devices simultaneously.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
