
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-chain-control, qb-chain-controllers, qb-chain-description, qb-chain-msgs }:
buildRosPackage {
  pname = "ros-noetic-qb-chain";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/noetic/qb_chain/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "efff631b51b51d78a9cdb05a6e9ad716dd5a874483b27ccf6ada8e84f01350a2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-chain-control qb-chain-controllers qb-chain-description qb-chain-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface to control multiple qbrobotics® devices simultaneously.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
