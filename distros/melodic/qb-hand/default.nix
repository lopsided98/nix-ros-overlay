
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-hand-control, qb-hand-description, qb-hand-gazebo, qb-hand-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-hand";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "04ad748c26401f3f7f1c4c1b966daac1abb137c6882a0a0938a2632972792712";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qb-hand-control qb-hand-description qb-hand-gazebo qb-hand-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
