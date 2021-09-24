
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-hand-control, qb-hand-description, qb-hand-gazebo, qb-hand-hardware-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-hand";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/noetic/qb_hand/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "efe6c0316bba3fb5b20f1d482c88937b2ae64058a80059b796773c896b3062c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-hand-control qb-hand-description qb-hand-gazebo qb-hand-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
