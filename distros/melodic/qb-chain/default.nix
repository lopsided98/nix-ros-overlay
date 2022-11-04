
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-chain-control, qb-chain-controllers, qb-chain-description, qb-chain-msgs }:
buildRosPackage {
  pname = "ros-melodic-qb-chain";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/melodic/qb_chain/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "129a5060e66b66399afd5e6d2e7f4de57eb9dd101c06689f83eaf7a8413d0a8f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-chain-control qb-chain-controllers qb-chain-description qb-chain-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface to control multiple qbrobotics® devices simultaneously.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
