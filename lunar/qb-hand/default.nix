
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qb-hand-control, qb-hand-hardware-interface, catkin, qb-hand-description }:
buildRosPackage {
  pname = "ros-lunar-qb-hand";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/lunar/qb_hand/2.0.0-1.tar.gz;
    sha256 = "ef703dc0cf7a743c4d1db87e87073763c54bb7ade8f3e280bd935f49e26306a0";
  };

  propagatedBuildInputs = [ qb-hand-control qb-hand-hardware-interface qb-hand-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbhand device.'';
    #license = lib.licenses.BSD 3-Clause;
  };
}
