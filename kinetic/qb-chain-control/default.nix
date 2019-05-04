
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-chain-control";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/kinetic/qb_chain_control/2.0.0-0.tar.gz;
    sha256 = "ad89f424164e0e33ccac1edef86dd26f742e93f2b2b27ac6bfda8167dfa9e56c";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS node to control multiple qbrobotics® devices simultaneously.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
