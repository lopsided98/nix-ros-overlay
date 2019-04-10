
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-move-description, qb-move-hardware-interface, catkin, qb-move-control }:
buildRosPackage {
  pname = "ros-lunar-qb-move";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/lunar/qb_move/2.0.0-1.tar.gz;
    sha256 = "b1c8b177e5e8b0fea26ad1065dc91c5fff504d93c04e871a5d70690413839d00";
  };

  propagatedBuildInputs = [ qb-move-description qb-move-hardware-interface qb-move-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbmove device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
