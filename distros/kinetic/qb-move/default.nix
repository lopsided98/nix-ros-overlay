
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-move-control, qb-move-description, qb-move-hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-move";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "00ed038a429cfe8243b90a26201662962e290a40efb9929464eb95f17e93870a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-move-control qb-move-description qb-move-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
