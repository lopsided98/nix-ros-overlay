
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-move-description, qb-move-hardware-interface, catkin, qb-move-control }:
buildRosPackage {
  pname = "ros-kinetic-qb-move";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "b1d3714619c40ab241c41fc0ef90c5f59e9cd4a5a7e1a2a889774318a250a068";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-move-description qb-move-hardware-interface qb-move-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
