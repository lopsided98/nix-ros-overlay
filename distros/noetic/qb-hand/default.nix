
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-hand-control, qb-hand-description, qb-hand-gazebo, qb-hand-hardware-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-hand";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/noetic/qb_hand/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "347e138a200c4edad413c86a64153b027e71616c6f90e65bd238fd8a6c034bb7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-hand-control qb-hand-description qb-hand-gazebo qb-hand-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
