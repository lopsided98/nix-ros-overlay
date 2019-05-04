
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-move-description, qb-move-hardware-interface, catkin, qb-move-control }:
buildRosPackage {
  pname = "ros-kinetic-qb-move";
  version = "2.0.0";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move/2.0.0-0.tar.gz;
    sha256 = "e5bc09f4320884a3001addbc136fcaa0acb722c06275fd8ff7256663718f9930";
  };

  propagatedBuildInputs = [ qb-move-description qb-move-hardware-interface qb-move-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
