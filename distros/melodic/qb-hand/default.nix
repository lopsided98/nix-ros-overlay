
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-hand-control, qb-hand-description, qb-hand-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-hand";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "aabf19f098662ae7195c61133104fbb799d47e58f9fcc52a069fcd08978b3cc9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-hand-control qb-hand-description qb-hand-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
