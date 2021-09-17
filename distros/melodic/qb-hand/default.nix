
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-hand-control, qb-hand-description, qb-hand-gazebo, qb-hand-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-hand";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "c5f392b47b9ba4596bfdd4de7d478838156926462422b5cbc0261a60b4c0d4b2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-hand-control qb-hand-description qb-hand-gazebo qb-hand-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
