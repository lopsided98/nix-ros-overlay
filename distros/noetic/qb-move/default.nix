
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-move-control, qb-move-description, qb-move-gazebo, qb-move-hardware-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-move";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/noetic/qb_move/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "a7e9a5f34bfe0ccf833e8e1cf6053e2df711750c092cad5abb2c9b071eb03d62";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-move-control qb-move-description qb-move-gazebo qb-move-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
