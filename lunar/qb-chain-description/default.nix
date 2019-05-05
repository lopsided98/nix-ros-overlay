
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-qb-chain-description";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/lunar/qb_chain_description/2.0.0-0.tar.gz;
    sha256 = "db2f19cb2f7ebdf84ea6e9f3507b390964356d49918fdf12c44ec577183c51da";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for complex chains of qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
