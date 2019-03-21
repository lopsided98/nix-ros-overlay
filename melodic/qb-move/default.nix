
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-move-description, qb-move-hardware-interface, catkin, qb-move-control }:
buildRosPackage {
  pname = "ros-melodic-qb-move";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move/2.0.0-1.tar.gz;
    sha256 = "1a320423c63420ddd649d7df7f9e5a973078788f6ca6f4ef5d0675eb69c4b62c";
  };

  propagatedBuildInputs = [ qb-move-description qb-move-hardware-interface qb-move-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbmove device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
