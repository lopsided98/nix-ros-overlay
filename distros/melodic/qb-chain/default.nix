
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-chain-control, qb-chain-controllers, qb-chain-description, qb-chain-msgs }:
buildRosPackage {
  pname = "ros-melodic-qb-chain";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/melodic/qb_chain/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "fd69a4195e5785f5d4c1572323024ade0f7dd2e9eb78e438aa1715b76793dedd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-chain-control qb-chain-controllers qb-chain-description qb-chain-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface to control multiple qbrobotics® devices simultaneously.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
