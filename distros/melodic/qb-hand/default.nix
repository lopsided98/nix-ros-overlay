
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-hand-control, qb-hand-description, qb-hand-gazebo, qb-hand-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-hand";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "cd31ab5d8261ae143b9400f210339e043746a8c5d465b0486dda672a9dd381cc";
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
