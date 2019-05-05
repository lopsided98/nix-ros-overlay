
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-qb-move-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/lunar/qb_move_description/2.0.0-1.tar.gz;
    sha256 = "fa8e35f623e02d6591f4211775eb32bd53f7ae163befe0f78aaa04c4c15fc557";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
