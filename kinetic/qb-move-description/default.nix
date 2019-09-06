
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-description";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_description/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "535d33dd60dcf251fc68be36c53b7b2b5c46645bf6495d8622af3136c8676349";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
