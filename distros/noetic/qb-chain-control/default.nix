
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-chain-control";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/noetic/qb_chain_control/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "8775ed6b10a3e32d8c41b193d9c670d74ead9033f5c5eb515e3934c5ffe77ae3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS node to control multiple qbrobotics® devices simultaneously.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
