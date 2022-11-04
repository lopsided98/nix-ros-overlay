
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-chain-control, qb-chain-controllers, qb-chain-description, qb-chain-msgs }:
buildRosPackage {
  pname = "ros-noetic-qb-chain";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/noetic/qb_chain/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "14c7b8585b56cf1cc62704abcad7117cd796506c326e7f003bda83a1698705ca";
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
