
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-qb-chain-control";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/lunar/qb_chain_control/2.0.0-0.tar.gz;
    sha256 = "6d4c1b1e30b483fd703b63908c2f4726bbea8a8b4a667e0f173ed5e522d6eaa6";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS node to control multiple qbrobotics® devices simultaneously.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
