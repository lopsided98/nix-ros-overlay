
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-chain-description, catkin, qb-chain-control }:
buildRosPackage {
  pname = "ros-lunar-qb-chain";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/lunar/qb_chain/2.0.0-0.tar.gz;
    sha256 = "e474c2fd9cfd088e1ed02d0c1a5adc25ae336f993b32dff2881eb0f90e0be4b4";
  };

  propagatedBuildInputs = [ qb-chain-description qb-chain-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface to control multiple qbrobotics® devices simultaneously.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
