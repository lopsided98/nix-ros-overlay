
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-softhand-industry-control, qb-softhand-industry-description, qb-softhand-industry-hardware-interface, qb-softhand-industry-utils }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry";
  version = "1.0.8-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry/1.0.8-3.tar.gz";
    name = "1.0.8-3.tar.gz";
    sha256 = "50ccae1b5840fa471232eadda461943143cd8479ef4b441a21b5d3764a9a2de6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-softhand-industry-control qb-softhand-industry-description qb-softhand-industry-hardware-interface qb-softhand-industry-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® SoftHand INdustry device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
