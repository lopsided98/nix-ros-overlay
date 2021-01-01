
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-hand-control, qb-hand-description, qb-hand-hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-hand";
  version = "2.0.0";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/kinetic/qb_hand/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "14c3ec6881f636553bce27d272dc767e2d6e7f45d70d4b91871b6042cfc603d8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-hand-control qb-hand-description qb-hand-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
